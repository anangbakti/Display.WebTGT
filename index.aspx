<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<%@ Register assembly="WebEdition" namespace="ThinkGeo.MapSuite.WebEdition" tagprefix="cc1" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>SPOT</title>
    <link href="~/Styles/index.css" rel="stylesheet" type="text/css" />
</head>
<body><form id="form1" runat="server">
    <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
    </telerik:RadScriptManager>
    <div id="headerBox">
        <div id="logo"></div>
    </div>
    <div id="contentBox">
        <telerik:RadSplitter ID="RadSplitter1" runat="server" SplitBarsSize=""  Width="100%" Height="100%" BorderSize="0"  >
            <telerik:RadPane id="navigationPane" runat="server"  Width="258" MaxWidth="258" MinWidth="40" Scrolling="None">
                <div id="displayModeBox">
                    <div id="displayMode">Mode :</div>
                    <div id="displayModeValue">Live</div>
                </div>
                <div id="leftDaftarKapalBox">
                    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" Skin="Vista" SelectedIndex="0" 
                        MultiPageID="RadMultiPage1">
                        <Tabs>
                            <telerik:RadTab runat="server" Text="SEMUA KAPAL">
                            </telerik:RadTab>
                            <telerik:RadTab runat="server" Text="CARI">
                            </telerik:RadTab>
                        </Tabs>
                    </telerik:RadTabStrip>
                    <telerik:RadMultiPage ID="RadMultiPage1" runat="server" SelectedIndex="0" Width="345px">
                        <telerik:RadPageView ID="RadPageView1" runat="server">
                             <img src="Styles/FilterHeaderBox.jpg" alt="General - image only"  class="imgHeaderRedBox"/>
                        </telerik:RadPageView>
                        <telerik:RadPageView ID="RadPageView2" runat="server">
                            
                        </telerik:RadPageView>
                    </telerik:RadMultiPage>
                </div>
                <div id="leftLegendBox">
                    <telerik:RadTabStrip ID="RadTabStrip2" runat="server" Skin="Vista" SelectedIndex="0" 
                        MultiPageID="RadMultiPage2">
                        <Tabs>
                            <telerik:RadTab runat="server" Text="LEGEND">
                            </telerik:RadTab>
                        </Tabs>
                    </telerik:RadTabStrip>
                    <telerik:RadMultiPage ID="RadMultiPage2" runat="server" SelectedIndex="0" Width="345px">
                        <telerik:RadPageView ID="RadPageView3" runat="server"> 
                            <img src="Styles/LegendStatusKapal.jpg" alt="General - image only" class="imgHeaderRedBox" />                            
                        </telerik:RadPageView>
                    </telerik:RadMultiPage>
                </div>
            </telerik:RadPane>
            <telerik:RadSplitBar id="RadSplitbar1" runat="server" CollapseMode="Forward"  />
            <telerik:RadPane id="contentPane" runat="server" Scrolling="None">
                 <cc1:Map ID="Map1" runat="server" height="100%" width="100%" BorderWidth="1" BorderColor="#C0C0C0">
                 </cc1:Map>
            </telerik:RadPane>
        </telerik:RadSplitter>
    </div>
    <div id="footerBox">
        <div id="copyright">Infoglobal &#169;2012. All Right Reserved</div>
    </div>
    </form>
</body>
</html>
