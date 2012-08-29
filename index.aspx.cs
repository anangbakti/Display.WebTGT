using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using ThinkGeo.MapSuite.Core;
using ThinkGeo.MapSuite.WebEdition;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            map1.MapBackground.BackgroundBrush = new GeoSolidBrush(GeoColor.FromHtml("#E5E3DF"));
            //map1.CurrentExtent = new RectangleShape(-13939426.6371, 6701997.4056, -7812401.86, 2626987.386962);
            map1.CurrentExtent = new RectangleShape(-26939426.6371, 6701997.4056, -7812401.86, 2626987.386962);
            map1.MapUnit = GeographyUnit.Meter;
           
            map1.MapTools.OverlaySwitcher.Enabled = true;
            map1.MapTools.MouseCoordinate.Enabled = true;

            GoogleOverlay google = new GoogleOverlay("Google Map");
            google.JavaScriptLibraryUri = new Uri(ConfigurationManager.AppSettings["GoogleUriV3"]);
            google.GoogleMapType = GoogleMapType.Normal;

            map1.CustomOverlays.Clear();
            map1.CustomOverlays.Add(google);

            map1.ExtentChanged += new EventHandler<ExtentChangedEventArgs>(map1_ExtentChanged);            

            GridAllKapal.DataSource = String.Empty;
        }
    }

    void map1_ExtentChanged(object sender, ExtentChangedEventArgs e)
    {
        string s = "";
    }
}