<?php


require '../check_super_admin_login.php';
include '../dashboard/dashboard.php';
include '../dashboard/menu.php';
require '../menu.php';
// require '../root/connect.php';
// $sql = "select * from category";
// $result = mysqli_query($conn, $sql);


if (isset($_SESSION['errror'])) {
?>


  <span style="color:red">
    <?php echo $_SESSION['errror']; ?>
  </span>

<?php
  unset($_SESSION['errror']);
}

?>
<div style="border-top:#09F solid 1px; margin:15px">

  <h3>Add User</h3>
  <form action="process_insert.php" method="post" enctype="multipart/form-data" name="frm">
    <table width="800" border="0" cellspacing="5" cellpadding="5">
      <tbody>
        <tr>
          <td>Name</td>
          <td><input type="text" name="name" id="ten_mon"></td>
        </tr>
        <tr>
          <td>Email</td>
          <td><input type="text" name="email" id="ten_mon"></td>
        </tr>
        <tr>
          <td>Username</td>
          <td><input type="text" name="username" id="ten_mon"></td>
        </tr>
        <tr>
          <td>Password</td>
          <td><input type="password" name="password" id="ten_mon"></td>
        </tr>
        <tr>
          <td>Address</td>
          <td><input type="text" name="address" id="ten_mon"></td>
        </tr>
        <tr>
          <td>Phone</td>
          <td><input type="tel" name="phone_number" id="ten_mon"></td>
        </tr>
        <tr>
          <td>Photo</td>
          <td><input type="file" name="photo"></td>
        </tr>
        <tr>
          <td>Type of administration</td>
          <td>
            <select name="level">
              <option value="0">Admin</option>
              <option value="1">Super Admin</option>

            </select>
          </td>
        </tr>

        <tr align="center">
          <td colspan="2">
            <input type="submit" name="cap_nhat" value="Add" id="cap_nhat">&nbsp;&nbsp;
            <input type="button" name="bo_qua" value="Cancel" onclick="window.location='index.php'">
          </td>
        </tr>
      </tbody>
    </table>
  </form>
</div>
</body>

</html>