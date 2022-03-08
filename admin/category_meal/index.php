<?php
require '../check_admin_login.php';
include '../dashboard/dashboard.php';
include '../dashboard/menu.php';
require '../root/connect.php';
$sql = "select * from category";
$result = mysqli_query($conn, $sql);
?>
<div style="border-top:#09F solid 1px; margin:15px">
    <!--viết java cho nút xóa-->
    <script language="javascript">
        // function xoaloaimonan(id)
        // {
        // 	if(confirm("Bạn có chắc chắn muốn xóa"))  <!--nếu đồng ý-->
        // 	{
        // 		window.location="xoa_loai_mon_an.php?id="+id;   <!--chuyển về trang xóa loại mon ăn-->
        // 	}
        // }
    </script>
    <h3 style="color:#333; font-weight:bold">Type of Meal</h3>
    <h3 align="center" style="color:red"> </h3>
    <!--dùng để thông báo khi thêm, sửa, xóa-->
    <table width="1250" border="1" cellpadding="5" cellspacing="0">
        <tbody>
            <tr style="background-color: #007bff; color: #ffffff; text-align:center; height:30px">
                <td width="50px">ID</td>
                <td width="150px">Type of Meal</td>
                <td>Description</td>
                <td width="150px">Image</td>
                <td width="50px">&nbsp;</td>
                <td width="50px">&nbsp;</td>
            </tr>
            <?php
            if (is_array($result) || is_object($result)) {
                foreach ($result as $each) {
            ?>
                    <tr>
                        <td align="center"><?php echo $each['id'] ?></td>
                        <td align="center"><?php echo $each['name'] ?></td>
                        <td align="justify" style="padding:5px"><?php echo $each['description'] ?></td>
                        <td align="justify"><img src="photos/<?php echo $each['photo'] ?>" width="100px" height="100px" style="margin-left:20px"></td>
                        <td align="center"><a href="sua_loai_mon_an.php?id=<?php echo $each['id'] ?>">Edit</a></td>
                        <td align="center"><a href="javascript:void(0)" onclick="xoaloaimonan(<?php echo $each['id'] ?>)">Delete</a></td>
                        <!--khi click vào nút xóa thì sự kiện onclick sẽ chạy-->
                    </tr>
            <?php
                }
            }
            ?>


        </tbody>
    </table>
    <div style="clear:both; text-align:center; margin-top:25px"><span class="div_trang"><b>1</b></span><span class="div_trang"><a href="/web_nha_hang/admin/loai_mon_an.php?page=2" title="Trang 2">2</a></span><span class="div_trang"><a href="/web_nha_hang/admin/loai_mon_an.php?page=3" title="Trang 3">3</a></span><span class="div_trang"><a href="/web_nha_hang/admin/loai_mon_an.php?page=2" title="Đến trang sau">&gt;</a></span><span class="div_trang"><a href="/web_nha_hang/admin/loai_mon_an.php?page=3" title="Đến trang cuối">&gt;&gt;</a></span></div>
</div>
</body>

</html>