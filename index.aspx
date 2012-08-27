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
        <div id="logo" class="float-left"></div>
        <div id="menuBox" class="float-left"></div>
    </div>
    <div id="nailHeader">V</div>
    <div id="contentBox">        
        <telerik:RadSplitter ID="RadSplitter1" runat="server" SplitBarsSize=""  Width="100%" Height="100%" BorderSize="0"  >
            <telerik:RadPane id="navigationPane" runat="server"  Width="260" MaxWidth="260" MinWidth="40" Scrolling="None">
                <div id="displayModeBox">
                    <div id="displayMode">Mode :</div>
                    <div id="displayModeValue">Live</div>
                </div>
                <div id="leftDaftarKapalBox">
                    <telerik:RadTabStrip ID="RadTabStrip1" runat="server" SelectedIndex="0" 
                        MultiPageID="RadMultiPage1" Skin="Vista"  >
                        <Tabs>
                            <telerik:RadTab runat="server" Text="DAFTAR KAPAL" Font-Size="10px">
                            </telerik:RadTab>
                        </Tabs>
                    </telerik:RadTabStrip>
                    <telerik:RadMultiPage ID="RadMultiPage1" runat="server" SelectedIndex="0" Width="345px">
                        <telerik:RadPageView ID="RadPageView1" runat="server">
                             <img src="Styles/FilterHeaderBox.jpg" alt="General - image only"  class="imgHeaderRedBox"/>
                             <fieldset id="entryFilter">
                                <input type="text" class="entryInputFilter" id="txtNama" />
                                <label for="txtNama" class="lblInputFilter">Nama</label>
                                <input type="text" class="entryInputFilter" id="txtMMSI" />
                                <label for="txtMMSI" class="lblInputFilter">MMSI</label>
                                <input type="text" class="entryInputFilter" id="txtCallSign" />
                                <label for="txtCallSign" class="lblInputFilter">CallSign</label>
                                
                             </fieldset>
                             <button id="cmdFilterAllKapal">Filter</button>
                             <div id="divGridAllKapal" class="imgHeaderRedBox">
                                <telerik:RadGrid ID="GridAllKapal" runat="server" AllowPaging="True" 
                                AllowSorting="True" AutoGenerateColumns="false" GridLines="None"  Width="230px" 
                                     HeaderStyle-Font-Size="10px"  >                                
                                <MasterTableView>
                                    <RowIndicatorColumn>
                                        <HeaderStyle Width="20px" Height="30px"/>
                                    </RowIndicatorColumn>
                                    <ExpandCollapseColumn>
                                        <HeaderStyle Width="20px" Height="30px" />
                                    </ExpandCollapseColumn>
                                    <Columns>
                                        <telerik:GridBoundColumn HeaderText="Nama Kapal" UniqueName="column"> 
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn HeaderText="MMSI" UniqueName="column1">
                                        </telerik:GridBoundColumn>
                                        <telerik:GridBoundColumn HeaderText="CallSign" UniqueName="column2">
                                        </telerik:GridBoundColumn>
                                    </Columns>
                                </MasterTableView>
                            </telerik:RadGrid>
                             </div>
                        </telerik:RadPageView>                       
                    </telerik:RadMultiPage>
                </div>
                <div id="leftLegendBox">
                    <telerik:RadTabStrip ID="RadTabStrip2" runat="server" Skin="Vista" SelectedIndex="0" 
                        MultiPageID="RadMultiPage2">
                        <Tabs>
                            <telerik:RadTab runat="server" Text="LEGEND" Font-Size="10px">
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
                <div id="mapBox">
                    <cc1:Map ID="map1" runat="server" height="100%" width="100%" BorderWidth="1" BorderColor="#C0C0C0">
                    </cc1:Map>                 
                </div>        
                <div id="copyright" >Infoglobal &#169;2012. All Rights Reserved</div>        
            </telerik:RadPane>
        </telerik:RadSplitter>
    </div>
    <div id="nailFooter">V</div>
    <div id="footerBox">        
        <div id="refresh" class="float-left">Refresh in 43"</div>
        <a id="cmdRefreshNow" class="float-left" href="#">Refresh Now</a>
        <div id="labelJmlKapal" class="float-left">Kapal Terlihat: 100</div>
    </div>
    </form>
</body>
</html>
