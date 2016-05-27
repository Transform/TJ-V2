using System;
using System.Linq;
using Nop.Core;
using Nop.Core.Plugins;
using Nop.Services.Configuration;
using Nop.Services.Discounts;
using Nop.Services.Localization;
using System.Collections.Generic;

namespace Nop.Plugin.DiscountRules.ShippingPostalCode
{
    public partial class ShippingPostalCodeDiscountRequirementRule : BasePlugin, IDiscountRequirementRule
    {
        private readonly ISettingService _settingService;

        public ShippingPostalCodeDiscountRequirementRule(ISettingService settingService)
        {
            this._settingService = settingService;
        }

        /// <summary>
        /// Check discount requirement
        /// </summary>
        /// <param name="request">Object that contains all information required to check the requirement (Current customer, discount, etc)</param>
        /// <returns>Result</returns>
        public DiscountRequirementValidationResult CheckRequirement(DiscountRequirementValidationRequest request)
        {
            if (request == null)
                throw new ArgumentNullException("request");

            //invalid by default
            var result = new DiscountRequirementValidationResult();

            if (request.Customer == null)
                return result;

            if (request.Customer.ShippingAddress == null)
                return result;

            var shippingPostalCodeId = _settingService.GetSettingByKey<string>(string.Format("DiscountRequirement.ShippingPostalCode-{0}", request.DiscountRequirementId));

            if (string.IsNullOrWhiteSpace(shippingPostalCodeId))
                return result;

            IList<string> postalCodes = shippingPostalCodeId.Split(',');

            result.IsValid = postalCodes.Any(p => request.Customer.ShippingAddress.ZipPostalCode.Contains(p.Trim()));
            return result;
        }

        /// <summary>
        /// Get URL for rule configuration
        /// </summary>
        /// <param name="discountId">Discount identifier</param>
        /// <param name="discountRequirementId">Discount requirement identifier (if editing)</param>
        /// <returns>URL</returns>
        public string GetConfigurationUrl(int discountId, int? discountRequirementId)
        {
            //configured in RouteProvider.cs
            string result = "Plugins/DiscountRulesShippingPostalCode/Configure/?discountId=" + discountId;
            if (discountRequirementId.HasValue)
                result += string.Format("&discountRequirementId={0}", discountRequirementId.Value);
            return result;
        }

        public override void Install()
        {
            //locales
            this.AddOrUpdatePluginLocaleResource("Plugins.DiscountRules.ShippingPostalCode.Fields.PostalCodes", "Postal Codes");
            this.AddOrUpdatePluginLocaleResource("Plugins.DiscountRules.ShippingPostalCode.Fields.PostalCodes.Hint", "Select required comma separated postal codes.");
            base.Install();
        }

        public override void Uninstall()
        {
            //locales
            this.DeletePluginLocaleResource("Plugins.DiscountRules.ShippingPostalCode.Fields.PostalCodes");
            this.DeletePluginLocaleResource("Plugins.DiscountRules.ShippingPostalCode.Fields.PostalCodes.Hint");
            base.Uninstall();
        }
    }
}