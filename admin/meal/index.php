<?php
require '../check_admin_login.php';
include '../dashboard/dashboard.php';
include '../dashboard/menu.php';
require '../menu.php';
require '../root/connect.php';
$sql = "select 
    meal.*,
    category.name as category_name
    from meal
    join category 
    on meal.category_id=category.id";
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
    <h3 style="color:#333; font-weight:bold">Meal</h3>
    <h3 align="center" style="color:red"> </h3>
    <!--dùng để thông báo khi thêm, sửa, xóa-->
    <table width="1250" border="1" cellspacing="5" cellpadding="5" style="text-align:center">
        <tbody>
            <tr style="background-color: #007bff; color: #ffffff;">
                <td>ID</td>
                <td width="100">Meal</td>
                <td width="100">Type of Meal</td>
                <td>Description Detail</td>
                <td>Description</td>
                <td width="100">Price</td>
                <td width="100">Imgae</td>
                <td width="50">&nbsp;</td>
                <td width="50">&nbsp;</td>
            </tr>
            <?php
            foreach ($result as $each) {
            ?>
                <tr>
                    <td id="mamon"><?php echo $each['id'] ?></td>
                    <td><?php echo $each['name'] ?></td>
                    <td><?php echo $each['category_name'] ?></td>
                    <td style="text-align:justify; padding:5px"><?php echo $each['description'] ?></td>
                    <td style="text-align:justify; padding:5px"><?php echo $each['description_detail'] ?></td>
                    <td>$<?php echo $each['price'] ?></td>
                    <!-- <td>25,000</td> -->
                    <td><img src="photos/<?php echo $each['photo'] ?>" width="100px" height="100px"></td>
                    <td><a href="update_meal.php?id=<?php echo $each['id'] ?>">Edit</a></td>
                    <td><a href="javascript:void(0)" id="xoa" onclick="xoa_mon_an(<?php echo $each['id'] ?>)">Delete</a></td>
                </tr>
            <?php
            }
            ?>

        </tbody>
    </table>
    <div style="text-align:center; margin-top:35px"><span class="div_trang"><b>1</b></span><span class="div_trang"><a href="/web_nha_hang/admin/mon_an.php?page=2" title="Trang 2">2</a></span><span class="div_trang"><a href="/web_nha_hang/admin/mon_an.php?page=3" title="Trang 3">3</a></span><span class="div_trang"><a href="/web_nha_hang/admin/mon_an.php?page=2" title="Đến trang sau">&gt;</a></span><span class="div_trang"><a href="/web_nha_hang/admin/mon_an.php?page=9" title="Đến trang cuối">&gt;&gt;</a></span>
    </div>

</div>

<!-- <div style="border-top:#0CF solid 1px; margin-top:200px">
    Copy right
</div> -->



</div>
</body>

</html>