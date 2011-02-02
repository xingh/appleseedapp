<%@ Page AutoEventWireup="false" Inherits="Appleseed.AdminAll.ModuleDefinitions"
    Language="c#" MasterPageFile="~/Shared/SiteMasterDefault.master" Codebehind="ModuleDefinitions.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="Server">
    <table border="0" cellpadding="4" cellspacing="0" width="98%">
        <tr valign="top">
            <td width="150">
                &nbsp;
            </td>
            <td width="*">
                <table cellpadding="0" cellspacing="0" width="500">
                    <tr>
                        <td align="left" class="Head">
                            <rbfwebui:Label ID="Label1" runat="server" Text="Module type definition" TextKey="MODULE_TYPE_DEFINITION"></rbfwebui:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <hr noshade="noshade" size="1" />
                        </td>
                    </tr>
                </table>
                <p>
                    <rbfwebui:Button ID="btnUseInstaller" runat="server" CausesValidation="False" class="CommandButton"
                        designtimedragdrop="400" Text="Use installer" TextKey="USE_INSTALLER" />&nbsp;
                    <rbfwebui:Button ID="btnDescription" runat="server" CausesValidation="False" class="CommandButton"
                        Text="Install Manually" TextKey="INSTALL_MANUALLY" />&nbsp;
                    <rbfwebui:Button ID="chbMVCAction" runat="server" CausesValidation="False" class="CommandButton"
                        Text="MVC Action" TextKey="MVC_ACTION" />&nbsp;
                    <rbfwebui:Button ID="chbPortableAreas" runat="server" CausesValidation="False" class="CommandButton"
                        Text="Portable Areas" TextKey="PORTABLE_AREAS" />&nbsp;
                </p>
                <table id="tableInstaller" runat="server" border="0" cellpadding="3" cellspacing="0"
                    width="750">
                    <tr>
                        <td class="SubHead" nowrap="nowrap" width="106">
                            <rbfwebui:Label ID="Label7" runat="server" Text="Friendly Name" TextKey="INSTALLER_FILE">Installer file</rbfwebui:Label>:
                        </td>
                        <td width="6">
                        </td>
                        <td>
                            <asp:TextBox ID="InstallerFileName" runat="server" Columns="30" CssClass="NormalTextBox"
                                MaxLength="150" Width="390"></asp:TextBox>
                        </td>
                        <td width="10">
                        </td>
                        <td class="Normal" width="250">
                            <asp:RequiredFieldValidator ID="Requiredfieldvalidator1" runat="server" ControlToValidate="InstallerFileName"
                                CssClass="Error" Display="Dynamic" ErrorMessage="Enter an Installer Name" textkey="ERROR_ENTER_A_FILE_NAME"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <table id="tableManual" runat="server" border="0" cellpadding="3" cellspacing="0"
                    width="750">
                    <tr>
                        <td class="SubHead" width="105">
                            <rbfwebui:Label ID="Label2" runat="server" Text="Friendly Name" TextKey="FRIENDLY_NAME"></rbfwebui:Label>:
                        </td>
                        <td rowspan="6" width="3">
                            &nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="FriendlyName" runat="server" Columns="30" CssClass="NormalTextBox"
                                MaxLength="150" Width="390"></asp:TextBox>
                        </td>
                        <td rowspan="6" width="10">
                            &nbsp;
                        </td>
                        <td class="Normal" width="250">
                            <asp:RequiredFieldValidator ID="Req1" runat="server" ControlToValidate="FriendlyName"
                                CssClass="Error" designtimedragdrop="235" Display="Dynamic" ErrorMessage="Enter a Module Name"
                                textkey="ERROR_ENTER_A_MODULE_NAME"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="SubHead" nowrap="nowrap" width="105">
                            <rbfwebui:Label ID="Label3" runat="server" Text="Desktop Source" TextKey="DESKTOP_SOURCE"></rbfwebui:Label>:
                        </td>
                        <td>
                            <asp:TextBox ID="DesktopSrc" runat="server" Columns="30" CssClass="NormalTextBox"
                                MaxLength="150" Width="390"></asp:TextBox>
                        </td>
                        <td class="Normal">
                            <asp:RequiredFieldValidator ID="Req2" runat="server" ControlToValidate="DesktopSrc"
                                CssClass="Error" Display="Dynamic" ErrorMessage="You Must Enter Source Path for the Desktop Module"
                                textkey="ERROR_ENTER_A_SOURCE_PATH"></asp:RequiredFieldValidator><rbfwebui:Label
                                    ID="lblInvalidModule" runat="server" CssClass="Error" EnableViewState="False"
                                    Text="Invalid module!" TextKey="ERROR_INVALID_MODULE" Visible="False">
											Invalid module!</rbfwebui:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="SubHead" width="105">
                            <rbfwebui:Label ID="Label4" runat="server" Text="Mobile Source" TextKey="MOBILE_SOURCE"></rbfwebui:Label>:
                        </td>
                        <td>
                            <asp:TextBox ID="MobileSrc" runat="server" Columns="30" CssClass="NormalTextBox"
                                MaxLength="150" Width="390"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="SubHead" width="116">
                            <rbfwebui:Label ID="Label5" runat="server" Text="Guid" TextKey="GUID"></rbfwebui:Label>:
                        </td>
                        <td>
                            <rbfwebui:Label ID="lblGUID" runat="server" CssClass="Normal" Font-Bold="True" ForeColor="Silver"></rbfwebui:Label>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td class="SubHead" valign="top" width="116">
                        </td>
                        <td>
                            <rbfwebui:LinkButton ID="selectAllButton" runat="server" CssClass="CommandButton"
                                Text="Select all" TextKey="SELECT_ALL"></rbfwebui:LinkButton>&nbsp;&nbsp;
                            <rbfwebui:LinkButton ID="selectNoneButton" runat="server" CssClass="CommandButton"
                                Text="Select none" TextKey="SELECT_NONE"></rbfwebui:LinkButton>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <%-- <tr>
                            <td class="SubHead" valign="top" width="116">
                                <rbfwebui:Label ID="Label6" runat="server" Text="Portals" TextKey="PORTALS"></rbfwebui:Label>:
                            </td>
                            <td>
                                <div style="overflow: auto; height: 200px">
                                    <asp:CheckBoxList ID="PortalsName" runat="server" CellPadding="0" CellSpacing="0"
                                        CssClass="Normal" RepeatColumns="1" RepeatDirection="Horizontal">
                                    </asp:CheckBoxList>
                                </div>
                            </td>
                            <td>
                            </td>
                        </tr>--%>
                </table>
                <table id="tableMVC" runat="server">
                    <tr>
                        <td class="SubHead" width="105">
                            <rbfwebui:Label ID="lblSelectAction" runat="server" Text="Select Action" TextKey="SELECT_ACTION"></rbfwebui:Label>:
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlAction" runat="server" DataTextField="key" DataValueField="value">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="SubHead" width="105">
                            <rbfwebui:Label ID="lblFriendlyNameMVC" runat="server" Text="Friendly Name" TextKey="FRIENDLY_NAME"></rbfwebui:Label>:
                        </td>
                        <td>
                            <asp:TextBox ID="FriendlyNameMVC" runat="server" Columns="30" CssClass="NormalTextBox"
                                MaxLength="150" Width="390"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <table id="tablePortableAreas" runat="server">
                    <tr>
                        <td class="SubHead" width="105">
                            <rbfwebui:Button ID="btnRegisterPortableAreas" runat="server" Text="Registrar todas"
                                OnClick="btnRegisterPortableAreas_Click" />
                            <asp:BulletedList ID="registeredAreas" runat="server" Width="100%">                            
                            </asp:BulletedList>
                        </td>
                    </tr>
                </table>
                <div id="portalsDiv" runat="server">
                    <p>
                        <rbfwebui:Label ID="Label8" runat="server" CssClass="SubHead" Text="Portals" TextKey="PORTALS"></rbfwebui:Label>:
                        <div style="overflow: auto; height: 200px">
                            <asp:CheckBoxList ID="PortalsName" runat="server" CellPadding="0" CellSpacing="0"
                                CssClass="Normal" RepeatColumns="1" RepeatDirection="Horizontal">
                            </asp:CheckBoxList>
                        </div>
                    </p>
                    <p>
                        <rbfwebui:LinkButton ID="updateButton" runat="server" class="CommandButton" Text="Update"
                            TextKey="UPDATE" OnClick="OnUpdate">Update</rbfwebui:LinkButton>&nbsp;
                        <rbfwebui:LinkButton ID="cancelButton" runat="server" CausesValidation="False" class="CommandButton"
                            Text="Cancel" TextKey="CANCEL" OnClick="OnCancel">Cancel</rbfwebui:LinkButton>&nbsp;
                        <rbfwebui:LinkButton ID="deleteButton" runat="server" CausesValidation="False" class="CommandButton"
                            Text="Delete this module type" TextKey="DELETE_THIS_MODULE_TYPE" OnClick="OnDelete">Delete this module type</rbfwebui:LinkButton></p>
                    <p>
                        <rbfwebui:Label ID="lblErrorDetail" runat="server" CssClass="Error"></rbfwebui:Label></p>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
