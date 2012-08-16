using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ThinkGeo.MapSuite.Core;
using ThinkGeo.MapSuite.WebEdition;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            map1.MapBackground.BackgroundBrush = new GeoSolidBrush(GeoColor.FromHtml("#E5E3DF"));
            map1.CurrentExtent = new RectangleShape(-125, 72, 50, -46);
            map1.MapUnit = GeographyUnit.DecimalDegree;

            WorldMapKitWmsWebOverlay worldMapKitOverlay = new WorldMapKitWmsWebOverlay();
            map1.CustomOverlays.Add(worldMapKitOverlay);

            GridAllKapal.DataSource = String.Empty;
        }
    }
}