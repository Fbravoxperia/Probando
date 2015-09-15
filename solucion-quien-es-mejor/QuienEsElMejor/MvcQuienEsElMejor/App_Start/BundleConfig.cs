using System.Web;
using System.Web.Optimization;

namespace MvcQuienEsElMejor
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {

            bundles.Add(new ScriptBundle("~/bundles/script").Include(
                      "~/Scripts/jquery-2.1.1.min.js",
                      "~/Scripts/materialize.min.js",
                      "~/Scripts/main.js"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/ghpages-materialize.css",
                      "~/Content/main.css"));
        }
    }
}
