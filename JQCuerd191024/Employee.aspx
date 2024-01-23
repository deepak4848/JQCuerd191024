<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="JQCuerd191024.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery.js"></script>
    <script type="text/javascript">
        function INSERT() {
            debugger;
            $.ajax({
                url: 'Employee.aspx/Insertdata',
                type: 'post',
                contentType: 'application/json;charset=utf-8',
                dataType: 'json',
                data: "{A:'" + $("#txtname").val() + "',B:'" + parseInt($("#txtage").val()) + "',C:'" + $("#txtaddress").val() + "'}",
                success: function () {
                    alert('save');
                },
                error: function () {
                    alert('not saved');
                }
            });
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" id="txtname" /></td>
                </tr>
                <tr>
                    <td>Age:</td>
                    <td><input type="text" id="txtage" /></td>
                </tr>
                <tr>
                    <td>Adderss:</td>
                    <td><input type="text" id="txtaddress" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="button" id="btnsubmit" value="Save" onclick="INSERT()" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
