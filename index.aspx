<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

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
        <telerik:RadSplitter ID="RadSplitter1" runat="server" SplitBarsSize=""  Width="100%" Height="100%">
            <telerik:RadPane id="navigationPane" runat="server" >
                <div id="displayModeBox">
                    <div id="displayMode">Mode :</div>
                    <div id="displayModeValue">Live</div>
                </div>
            </telerik:RadPane>
            <telerik:RadSplitBar id="RadSplitbar1" runat="server" CollapseMode="Forward" />
            <telerik:RadPane id="contentPane" runat="server">
                Right Pane
            </telerik:RadPane>
        </telerik:RadSplitter>
    </div>
    <div id="footerBox">
        <div id="copyright">Infoglobal &#169;2012. All Right Reserved</div>
    </div>
    </form>
</body>
</html>
