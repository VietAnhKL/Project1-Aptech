<?php
require '../check_super_admin_login.php';
include '../dashboard/dashboard.php';
include '../dashboard/menu.php';
require '../root/connect.php';
require '../menu.php';
$sql = "select * from admin";
$result = mysqli_query($conn, $sql);
?>
<div style="border-top:#09F solid 1px; margin:15px">
  <!--viết java co nút xóa-->
  <script language="javascript">
    /*$(document).ready(function(e) {
		$('#xoa').click(function(){
			if(confirm("Bạn có chắc chắn muốn xóa"))
				{
					var ma_mon=$('#mamon').html();
					window.location="xoa_mon_an.php?ma_mon="+ma_mon;
				}
			});
	});
	*/
    function xoa_mon_an(id) {
      if (confirm("Bạn có chắc chắn muốn xóa")) {
        window.location = "delete.php?id=" + id;
      }
    }
  </script>
  <h3 style="color:#333; font-weight:bold">User List</h3>
  <h3 align="center" style="color:red"> </h3>
  <!--dùng để thông báo khi thêm, sửa, xóa-->
  <table width="1250" border="1" cellspacing="5" cellpadding="5" style="text-align:center">
    <tbody>
      <tr style="background-color: #007bff; color: #ffffff;">
        <td width="50">ID</td>
        <td width="200">Name</td>
        <td width="150">Username</td>
        <td width="100">Password</td>
        <td width="150">Email</td>
        <td width="150">Address</td>
        <td width="100">Phone</td>
        <td width="150">Avatar</td>
        <td width="100">Type of administration</td>
        <td width="50">&nbsp;</td>
        <td width="50">&nbsp;</td>
      </tr>
      <?php
      if (is_array($result) || is_object($result)) {
        foreach ($result as $each) {
      ?>
          <tr>
            <td id="mamon"><?php echo $each['id'] ?></td>
            <td><?php echo $each['name'] ?></td>
            <td><?php echo $each['username'] ?></td>
            <td><?php echo $each['password'] ?></td>
            <td><?php echo $each['email'] ?></td>
            <td><?php echo $each['address'] ?></td>
            <td><?php echo $each['phone_number'] ?></td>
            <td align="justify"><img src="photos/<?php echo $each['photo'] ?>" width="60px" height="60px" style="margin-left:30px"></td>
            <td><?php
                if ($each['level'] == 0) {
                  echo 'Admin';
                } else {
                  echo 'Super Admin';
                } ?></td>
            <td><a href="update_users.php?id=<?php echo $each['id'] ?>">Edit</a></td>
            <td><a href="#" id="xoa" onclick="xoa_mon_an(<?php echo $each['id'] ?>)">Delete</a></td>
          </tr>
      <?php
        }
      }
      ?>


    </tbody>
  </table>
  <div style="text-align:center; margin-top:35px"><span class="div_trang"><b>1</b></span><span class="div_trang"><a href="/web_nha_hang/admin/danh_sach_user.php?page=2" title="Trang 2">2</a></span><span class="div_trang"><a href="/web_nha_hang/admin/danh_sach_user.php?page=2" title="Đến trang sau">&gt;</a></span><span class="div_trang"><a href="/web_nha_hang/admin/danh_sach_user.php?page=2" title="Đến trang cuối">&gt;&gt;</a></span></div>

</div>
</body>

</html>