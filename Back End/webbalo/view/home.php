<link rel="stylesheet" href="../view/css/index.css">
<div class="banner">
    <img src="../view/images/balo_simplecarry.jpg" alt="">
</div>
<div class="product">
    <div class="balo">
        <div class="tille">
            <h3>BALO</h3>
        </div>
        <div class="sanpham responsive">
         
                <?php

                 $dssanpham = sanpham_showId_1();

                 foreach($dssanpham as $row){
                echo '
                        <div class="sanpham1">
                            <form method = "POST" action = "../controller/index.php?act=cart">
                                <img src="../view/images/' . $row['hinh'] . '" alt="">
                                <h3>' . substr($row['tensp'], 0, 45)  . '</h3>
                                <p>' . $row['gia'] . ' VNĐ</p>
                                <input type="hidden" name="hinh" value="' . $row['hinh'] . '"/>
                                <input type="hidden" name="tensp" value="' . $row['tensp'] . '"/>
                                <input type="hidden" name="gia" value="' . $row['gia'] . '"/>
                                <input type="hidden" name="soluong" value="1">
                                <div class="buy">
                                <button><a href="../controller/index.php?act=chitiet&idsp='. $row['id'].'">Xem chi tiết</a></button>
                                    <input type="submit" value="Cho vào giỏ" name="addcart">
                                </div>
                            </form>
                        </div>
                                 ';
                 }
  
                ?>

        </div>
    </div>
    <div class="vali">
        <div class="tille">
            <h3>VALI KÉO</h3>
        </div>
        <div class="sanpham responsive">
                <?php
                 $dssanpham = sanpham_showId_2();
                 foreach($dssanpham as $row){
                echo '
                        <div class="sanpham1">
                            <form method = "POST" action = "../controller/index.php?act=cart">
                                <img src="../view/images/' . $row['hinh'] . '" alt="">
                                <h3>' . substr($row['tensp'], 0, 45)  . '</h3>
                                <p>' . $row['gia'] . ' VNĐ</p>
                                <input type="hidden" name="hinh" value="' . $row['hinh'] . '"/>
                                <input type="hidden" name="tensp" value="' . $row['tensp'] . '"/>
                                <input type="hidden" name="gia" value="' . $row['gia'] . '"/>
                                <input type="hidden" name="soluong" value="1">
                                <div class="buy">
                                <button><a href="../controller/index.php?act=chitiet&idsp='. $row['id'].'">Xem chi tiết</a></button>
                                    <input type="submit" value="Cho vào giỏ" name="addcart">
                                </div>
                            </form>
                        </div>
                                 ';
                 }
                ?>
        </div>
    </div>
    <div class="cap">
        <div class="tille">
            <h3>TÚI XÁCH</h3>
        </div>
        <div class="sanpham responsive">
                <?php
                    $dssanpham = sanpham_showId_3();
                    foreach($dssanpham as $row){
                   echo '
                           <div class="sanpham1">
                               <form method = "POST" action = "../controller/index.php?act=cart">
                                   <img src="../view/images/' . $row['hinh'] . '" alt="">
                                   <h3>' . substr($row['tensp'], 0, 45)  . '</h3>
                                   <p>' . $row['gia'] . ' VNĐ</p>
                                   <input type="hidden" name="hinh" value="' . $row['hinh'] . '"/>
                                   <input type="hidden" name="tensp" value="' . $row['tensp'] . '"/>
                                   <input type="hidden" name="gia" value="' . $row['gia'] . '"/>
                                   <input type="hidden" name="soluong" value="1">
                                   <div class="buy">
                                   <button><a href="../controller/index.php?act=chitiet&idsp='. $row['id'].'">Xem chi tiết</a></button>
                                       <input type="submit" value="Cho vào giỏ" name="addcart">
                                   </div>
                               </form>
                           </div>
                                    ';
                    }
                ?>
        </div>
    </div>
    <div class="bane">
        <img src="../view/images/banner1.jpg" alt="">
        <img src="../view/images/banner2.png" alt="">
    </div>
    <div class="tintuc">
        <div class="tille">
            <h3>TIN TỨC - SỰ KIỆN</h3>
        </div>
        <div class="new responsive">

            <a href="../controller/index.php?act=baiviet">
                <div class="tintuc1">
                    <img src="../view/images/tintuc1.png" alt="">
                    <h4>BALO SIÊU NHẸ BỀN ĐẸP MUA Ở ĐÂU?</h4>
                    <p class="dang">Đăng bởi: admin</p>
                    <hr>
                    <p>
                        Hiện nay, tiêu chí lựa chọn balo không chỉ đơn thuần về kiểu dáng, chất lượng, giá
                        thành...
                        mà rất nhiều khách hàng còn yêu cầu về chất liệu
                    </p>
                    <div class="thongso">
                        <p><i class="fa-solid fa-eye"></i> 185 Lượt xem</p>
                        <p style="text-align: right;"><i class="fa-solid fa-calendar-days"></i> 01-05-2022</p>
                    </div>
                </div>
            </a>

            <a href="../controller/index.php?act=baiviet">
                <div class="tintuc1">
                    <img src="../view/images/tintuc2.png" alt="">
                    <h4>Khuyến mãi cực sốc những mẫu balo dành cho học sinh sinh viên</h4>
                    <p class="dang">Đăng bởi: admin</p>
                    <hr>
                    <p>
                        Bạn là học sinh sinh viên đang muốn tìm cho mình một chiếc balo đi học, đi làm vừa thời
                        trang vừa tiện dụng mà giá cả hợp lý thì đừng bỏ lỡ chương trình sale cực
                    </p>
                    <div class="thongso">
                        <p><i class="fa-solid fa-eye"></i> 571 Lượt xem</p>
                        <p><i class="fa-solid fa-calendar-days"></i> 24-04-2022</p>
                    </div>
                </div>
            </a>

            <a href="../controller/index.php?act=baiviet">
                <div class="tintuc1">
                    <img src="../view/images/tintuc3.png" alt="">
                    <h4>Khuyến mãi tháng 6 túi xách thương hiệu Tucano</h4>
                    <p class="dang">Đăng bởi: admin</p>
                    <hr>
                    <p>
                        Tucano chắc hẳn là thương hiệu không còn quá xa lạ với những ai đam mê túi xách và balo
                        thời trang đến từ đất nước Italia xinh đẹp.
                    </p>
                    <div class="thongso">
                        <p><i class="fa-solid fa-eye"></i> 242 Lượt xem</p>
                        <p><i class="fa-solid fa-calendar-days"></i> 07-05-2022</p>
                    </div>
                </div>
            </a>

            <a href="../controller/index.php?act=baiviet">
                <div class="tintuc1">
                    <img src="../view/images/tintuc4.png" alt="">
                    <h4>BỘ SƯU TẬP BALO LAPTOP ĐẸP MÙA HÈ 2021</h4>
                    <p class="dang">Đăng bởi: admin</p>
                    <hr>
                    <p>
                        Chúng ta đang bước vào những ngày tháng đầu tiên của mùa hè năm 2021, cái nắng chói
                        chang và oi ả của mùa hạ đầu mùa chắc hẳn khiến không ít
                    </p>
                    <div class="thongso">
                        <p><i class="fa-solid fa-eye"></i> 351 Lượt xem</p>
                        <p><i class="fa-solid fa-calendar-days"></i> 10-05-2022</p>
                    </div>
                </div>
            </a>

            <a href="../controller/index.php?act=baiviet">
                <div class="tintuc1">
                    <img src="../view/images/tintuc5.png" alt="">
                    <h4>MUA BALO ĐẸP QUẬN GÒ VẤP</h4>
                    <p class="dang">Đăng bởi: admin</p>
                    <hr>
                    <p>
                        Kinh tế nhiều thành phần trên địa bàn quận phát triển nhanh.Công tác y tế, dân số, kế
                        hoạch hóa gia đình; công tác giáo dục đào tạo; công tác thông tin tuyên truyền và tổ
                        chức các hoạt động văn hóa nghệ thuật,
                    </p>
                    <div class="thongso">
                        <p><i class="fa-solid fa-eye"></i> 112 Lượt xem</p>
                        <p><i class="fa-solid fa-calendar-days"></i> 14-05-2022</p>
                    </div>
                </div>
            </a>

        </div>
    </div>

    <div class="thuonghieu ">
        <div class="tille">
            <h3>THƯƠNG HIỆU</h3>
        </div>
        <div class="logothuonghieu responsive">
            <img src="../view/images/logo_bestlife.png" alt="">
            <img src="../view/images/logo_sakos.png" alt="">
            <img src="../view/images/logo_simplecarry.png" alt="">
            <img src="../view/images/logo1.png" alt="">
            <img src="../view/images/logo_tresette.jpg" alt="">
            <img src="../view/images/logo_tomtoc.png" alt="">
            <img src="../view/images/logo_tucana.png" alt="">
        </div>
    </div>
</div>