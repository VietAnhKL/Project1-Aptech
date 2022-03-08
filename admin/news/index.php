<?php include '../dashboard/dashboard.php';
include '../dashboard/menu.php'; 
require '../root/connect.php';
$sql = "select * from manufacturers";
$result = mysqli_query($conn,$sql); ?>
<div style="border-top:#09F solid 1px; margin:15px">
		         <!--viết java cho nút xóa-->
<script language="javascript">
	// function xoatintuc(ma_tin_tuc)
	// {
	// 	if(confirm("Bạn có chắc chắn muốn xóa"))  <!--nếu đồng ý-->
	// 	{
	// 		window.location="xoa_tin_tuc.php?ma_tin_tuc="+ma_tin_tuc;   <!--chuyển về trang xóa loại mon ăn-->
	// 	}
	// }
</script>
<h3>News</h3>
<h3 align="center" style="color:red">  </h3>  <!--dùng để thông báo khi thêm, sửa, xóa-->
<table width="900" border="0" cellpadding="5" cellspacing="0">  
  <tbody><tr style="background-color: #007bff; color: #ffffff; text-align:center; height:30px">
    <td width="100px">Id</td>
    <td width="100px">Title</td>
    <td>Description</td>
    <td width="150px">Image</td>
    <td width="50px">&nbsp;</td>
    <td width="50px">&nbsp;</td>
  </tr>
    <tr>
    <td align="center">1</td>
    <td>Nấm kim châm xào thịt bò</td>
    <td align="justify" style="padding:5px">24/06/2011 - Nấm trắng, ớt đỏ, cần xanh, thịt bò nâu nhạt... đĩa nấm xào của bạn không chỉ ngon, bổ mà còn rất bắt mắt. </td>
    <td align="justify"><img src="../public/images/tin_tuc/20110624152323nam.jpg" width="60px" height="60px" style="margin-left:30px"></td>
    <td align="center"><a href="sua_tin_tuc.php?ma_tin_tuc=1">Sửa</a></td>
    <td align="center"><a href="javascript:void(0)" onclick="xoatintuc(1)">Xóa</a></td>
    <!--khi click vào nút xóa thì sự kiện onclick sẽ chạy-->
  </tr>
    <tr>
    <td align="center">2</td>
    <td>Gà hấp lá sen</td>
    <td align="justify" style="padding:5px">24/06/2011 - Nấm trắng, ớt đỏ, cần xanh, thịt bò nâu nhạt... đĩa nấm xào của bạn không chỉ ngon, bổ mà còn rất bắt mắt. </td>
    <td align="justify"><img src="../public/images/tin_tuc/ga_hap_la_sen.jpg" width="60px" height="60px" style="margin-left:30px"></td>
    <td align="center"><a href="sua_tin_tuc.php?ma_tin_tuc=2">Sửa</a></td>
    <td align="center"><a href="javascript:void(0)" onclick="xoatintuc(2)">Xóa</a></td>
    <!--khi click vào nút xóa thì sự kiện onclick sẽ chạy-->
  </tr>
    <tr>
    <td align="center">3</td>
    <td>No mắt ở Ngày hội cây trái ngon</td>
    <td align="justify" style="padding:5px">24/06/2011 - 212 sản phẩm đặc trưng của vùng đồng bằng sông Cửu Long tham gia hội thi cây trái ngon tại Bến Tre hôm 7/6. </td>
    <td align="justify"><img src="../public/images/tin_tuc/20110624153825trai-cay-la-7-1.jpg" width="60px" height="60px" style="margin-left:30px"></td>
    <td align="center"><a href="sua_tin_tuc.php?ma_tin_tuc=3">Sửa</a></td>
    <td align="center"><a href="javascript:void(0)" onclick="xoatintuc(3)">Xóa</a></td>
    <!--khi click vào nút xóa thì sự kiện onclick sẽ chạy-->
  </tr>
  
 
</tbody></table>
<div style="clear:both; text-align:center; margin-top:25px"><span class="div_trang"><b>1</b></span><span class="div_trang"><a href="/web_nha_hang/admin/danh_sach_tin_tuc.php?page=2" title="Trang 2">2</a></span><span class="div_trang"><a href="/web_nha_hang/admin/danh_sach_tin_tuc.php?page=2" title="Đến trang sau">&gt;</a></span><span class="div_trang"><a href="/web_nha_hang/admin/danh_sach_tin_tuc.php?page=2" title="Đến trang cuối">&gt;&gt;</a></span></div>
        	</div>
</body>
</html>