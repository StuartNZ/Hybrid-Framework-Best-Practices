﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfigurationIssues.aspx.cs" MasterPageFile="/umbraco/masterpages/umbracoPage.Master" Inherits="SEOChecker.Pages.Issues.ConfigurationIssues" %>
<%@ Register Assembly="controls" Namespace="umbraco.uicontrols" TagPrefix="umbraco" %>
<%@ Register TagPrefix="SEOChecker" Namespace="SEOChecker.Core.Controls" Assembly="SEOChecker.Core" %>
<%@ Import Namespace="SEOChecker.Resources" %>
<asp:Content ID="header" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="../../css/SEOChecker.css" />
    <script type="text/javascript" src="../../scripts/seochecker.js"></script>
    <script type="text/javascript">
        function DeleteItem(id) {
            $('.ActionPanel' + id).fadeOut(250);
        }

        function OpenDeleteDialog(id) {
            UmbClientMgr.openModalWindow('plugins/SEOChecker/pages/dialogs/confirmdelete.aspx?type=configuration&id=' + id, 'Delete', true, 400, 300);
        }

    </script>
</asp:Content>
  <asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <umbraco:UmbracoPanel ID="UmbracoPanel" runat="server">
        <SEOChecker:SEOCheckerPanel ID="SEOCheckerPanel" runat="server" />

        <asp:PlaceHolder ID="NoIssuesPlaceHolder" runat="server">
                <h2>
                    <%= ResourceHelper.Instance.GetStringResource("SEOCheckerConfigurationIssues_NoResult")%></h2>
        </asp:PlaceHolder>
        <asp:PlaceHolder ID="OverviewPlaceHolder" runat="server">
            <asp:Repeater ID="OverviewRepeater" runat="server">
                <ItemTemplate>
                    <%# RenderCategory(Eval("Category").ToString())%>
                    <asp:Panel ID="ErrorPanel" runat="server" CssClass='<%#string.Format("ActionPanel{0}",Eval("IssueId")) %>'>
                        <umbraco:Pane ID="ErrorPane" runat="server">
                            <div class="propertyItem">
                                <div class="propertyItemheader">
                                    <div class="bulkItemSelectChecboxContainer"><input type="checkbox" value='<%#Eval("IssueId") %>' class="bulkItemSelectCheckbox"/></div>
                                    <span class='<%#RenderCssClass((SEOChecker.Core.Repository.ConfigurationIssues.ConfigurationValidationErrorView)Container.DataItem)%>'>
                                    <%#Eval("Error") %>
                                        </span>
                                </div>
                                <div class="propertyItemContent">
                                    <span class='<%#RenderCssClass((SEOChecker.Core.Repository.ConfigurationIssues.ConfigurationValidationErrorView)Container.DataItem)%>'>
                                    <%#Eval("ErrorDescription") %>
                                        </span>
                                </div>
                                <div class="SEOCheckerOverviewButtons">
                                    <SEOChecker:DeleteButton ID="DeleteButton1" runat="server" IssueId='<%#Eval("IssueId") %>' />
                                </div>
                            </div>
                        </umbraco:Pane>
                    </asp:Panel>
                </ItemTemplate>
            </asp:Repeater>
            <asp:PlaceHolder runat="server" id="PagingPlaceHolder"/>
        </asp:PlaceHolder>
    </umbraco:UmbracoPanel>
</asp:Content>

