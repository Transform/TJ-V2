using System.Web.Mvc;
using System.Web.Routing;
using Nop.Web.Framework.Mvc.Routes;

namespace Nop.Plugin.DiscountRules.ShippingPostalCode
{
    public partial class RouteProvider : IRouteProvider
    {
        public void RegisterRoutes(RouteCollection routes)
        {
            routes.MapRoute("Plugin.DiscountRules.ShippingPostalCode.Configure",
                 "Plugins/DiscountRulesShippingPostalCode/Configure",
                 new { controller = "DiscountRulesShippingPostalCode", action = "Configure" },
                 new[] { "Nop.Plugin.DiscountRules.ShippingPostalCode.Controllers" }
            );
        }
        public int Priority
        {
            get
            {
                return 0;
            }
        }
    }
}
