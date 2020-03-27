<div class="am-header">
            <div class="am-header-left">
                <a id="naviconLeft" href="" class="am-navicon d-none d-lg-flex"><i class="icon ion-navicon-round"></i></a>
                <a id="naviconLeftMobile" href="" class="am-navicon d-lg-none"><i class="icon ion-navicon-round"></i></a>
                <a href="index.html" class="am-logo">CR-V Club Indonesia</a>
            </div><!-- am-header-left -->

            <div class="am-header-right">
                <div class="dropdown dropdown-notification">
<!--                    <a href="" class="nav-link pd-x-7 pos-relative" data-toggle="dropdown">
                        <i class="icon ion-ios-bell-outline tx-24"></i>
                         start: if statement 
                        <span class="square-8 bg-danger pos-absolute t-15 r-0 rounded-circle"></span>
                         end: if statement 
                    </a>-->
                </div><!-- dropdown -->
                <div class="dropdown dropdown-profile">
                    <a href="" class="nav-link nav-link-profile" data-toggle="dropdown">
<!--                        <img src="../img/img3.jpg" class="wd-32 rounded-circle" alt="">-->
                            <span class="logged-name"><span class="hidden-xs-down"><?php echo $this->session->userdata('nama_user'); ?></span> <i class="fa fa-angle-down mg-l-3"></i></span>
                    </a>
                    <div class="dropdown-menu wd-200">
                        <ul class="list-unstyled user-profile-nav">
                            <li><a href="<?php echo site_url('user/action/edit/'.$this->session->userdata('iduserlog')); ?>"><i class="icon ion-ios-person-outline"></i> Edit Profile</a></li>
                            <li><a href="<?php echo site_url('login/do_logout'); ?>"><i class="icon ion-power"></i> Sign Out</a></li>
                        </ul>
                    </div><!-- dropdown-menu -->
                </div><!-- dropdown -->
            </div><!-- am-header-right -->
        </div><!-- am-header -->