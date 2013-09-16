﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Installer.ascx.cs" Inherits="DigibizAdvancedMediaPicker.Installer" %>
<%@ Import Namespace="umbraco.IO" %>
<%@ Register TagPrefix="umb" Namespace="ClientDependency.Core.Controls" Assembly="ClientDependency.Core" %>
<%@ Register TagPrefix="UmbracoControls" Namespace="umbraco.uicontrols" Assembly="controls" %>
<%@ Register TagPrefix="UmbracoControls" Namespace="umbraco.controls" Assembly="umbraco" %>

<umb:CssInclude ID="CssPropertypane" runat="server" FilePath="propertypane/style.css" PathNameAlias="UmbracoClient" />

<div style="padding: 10px 10px 0;">

	<p><img src="<%=IOHelper.ResolveUrl(SystemDirectories.Umbraco)%>/plugins/DigibizAdvancedMediaPicker/Logo.png" /></p>

    <UmbracoControls:Feedback runat="server" ID="Success" type="success" Text="Digibiz Advanced Media Picker 2.5 successfully installed!" />

    <p>Now that the <strong>Digibiz Advanced Media Picker 2.5</strong> has been installed, you can add the following options. These options have already been saved, so you only need to press the save button if you want to change them.</p>

    <h2>Image Cropper</h2>

    <div class="propertypane">

    <p>
        <asp:button id="BtnSaveSettings" runat="server" Text="Save settings" onclick="BtnSaveSettings_Click"/>
    </p>

</div>