<link rel="stylesheet" href="../view/css/ad_seach.css">
<?php

if (isset($_POST['timkiem'])) {
    $name = $_POST['filter'];
}

$sql = sanpham_seach($name);

?>
<h2>Từ khóa tìm kiếm:
    <?php $_POST['filter'] ?></h2>
<form action="" id="tim" method="POST">
    <div class="tim">
        <input type="text" name="filter" placeholder="Tìm Kiếm sản phẩm">
        <input id="timkiem" type="submit" name="timkiem" value="Tìm kiếm"></i>
        <br>
    </div>

</form>
<ul>
    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $name = $_POST["filter"];

        if(isset($_GET['id'])){
            $id = $_GET['id'];
            sanpham_delete($id);
            echo "<script>alert('Xoá Sản Phẩm thành công')</script>";
            header('Refresh: 0; ../controller/indexAdmin.php?act=sanpham'); 
        }

        if ($name == "") {
        } else {

            $query = sanpham_seach($name);

            if($query != null){
                echo "<h3 class=ketqua>Kết quả tìm kiếm: " . $name . "</h3>";

                foreach($query as $row) {
                    $dellink="../controller/indexAdmin.php?act=sanpham&id=".$row['id'];
                    echo "<table >";

                    echo '
                                    <tr>
                                        <td>' . $row['id'] . '</td>
                                        <td><img src="../view/images/' . $row['hinh'] . '" alt=""></td>
                                        <td colspan="3" class="tensp">' . $row['tensp'] . '</td>
                                        <td>' . $row['gia'] . 'đ</td>
                                        <td>' . $row['iddanhmuc'] . '</td>
                
                                        <td class="ad"><a href="../controller/indexAdmin.php?act=suasanpham&page_layout=sua&id=' . $row['id'] . '"> <i class="fa-solid fa-pen"></i> </a></td>
                                        <td class="ad"><a href="'.$dellink.'"> <i class="fa-solid fa-trash"></i> </a></td>
                                    </tr>
                                    ';
                    echo "</table>";
                }
            } else {
                echo "<h3 style= margin-left:30px;>Không tìm Thấy Kết quả: " . $name . " </h3>";
            }
        }
    }




    ?>
</ul>

</div>