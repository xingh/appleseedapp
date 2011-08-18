<%@ Control AutoEventWireup="true" Inherits="Appleseed.DesktopModules.CoreModules.Pages.Pages"
    Language="c#" CodeBehind="Pages.ascx.cs" %>
<table cellpadding="5" cellspacing="0">
    <tr>
        <td class="SubHead" colspan="3">
            <rbfwebui:Label ID="lblHead" runat="server" Text="Pages" TextKey="AM_TABS" />
        </td>
    </tr>
    <tr valign="top">
        <td>
            <asp:ListBox ID="tabList" runat="server" CssClass="NormalTextBox" DataTextField="Name"
                DataValueField="ID" Rows="20" Width="400" />
        </td>
        <td>
            &nbsp;
        </td>
        <td>
            <table>
                <tr>
                    <td>
                        <rbfwebui:ImageButton ID="upBtn" runat="server" CommandName="up" TextKey="MOVE_UP"
                            OnClick="UpDownClick" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <rbfwebui:ImageButton ID="downBtn" runat="server" CommandName="down" TextKey="MOVE_DOWN"
                            OnClick="UpDownClick" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <rbfwebui:ImageButton ID="EditBtn" runat="server" CommandName="Edit" TextKey="EDITBTN"
                            OnClick="EditBtnClick" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <rbfwebui:ImageButton ID="DeleteBtn" runat="server" CommandName="Delete" TextKey="DELETEBTN"
                            OnClick="DeleteBtnClick" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <rbfwebui:LinkButton ID="addBtn" runat="server" CssClass="CommandButton" Text="Add New Page"
                TextKey="ADDPAGE" OnClick="AddPageClick" />
        </td>
    </tr>
</table>
