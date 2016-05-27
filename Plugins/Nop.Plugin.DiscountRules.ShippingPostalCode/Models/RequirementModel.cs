using System.Collections.Generic;
using System.Web.Mvc;
using Nop.Web.Framework;

namespace Nop.Plugin.DiscountRules.ShippingPostalCode.Models
{
    public class RequirementModel
    {
        public RequirementModel()
        {
            AvailableCountries = new List<SelectListItem>();
            AvailablePostalCodes = new List<SelectListItem>();
        }
        
        public int DiscountId { get; set; }

        public int RequirementId { get; set; }

        [NopResourceDisplayName("Plugins.DiscountRules.ShippingPostalCode.Fields.PostalCodes")]
        public string PostalCodes { get; set; }

        public IList<SelectListItem> AvailableCountries { get; set; }
        public IList<SelectListItem> AvailablePostalCodes { get; set; }
    }
}