<!DOCTYPE html>
<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 * 
 *  moh. machfudh
 * 
 */

?>

<head>
   <?php $this->load->view('header'); ?>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="fixed-top">
   <!-- BEGIN HEADER -->
   <div class="header navbar navbar-inverse navbar-fixed-top">
      <!-- BEGIN TOP NAVIGATION BAR -->
      <?php $this->load->view('navigation_bar'); ?>
      <!-- END TOP NAVIGATION BAR -->
   </div>
   <!-- END HEADER -->
   <!-- BEGIN CONTAINER -->
   <div class="page-container">
      <!-- BEGIN SIDEBAR -->
      <?php $this->load->view('sidebar_menu'); ?>
      <!-- END SIDEBAR -->
      <!-- BEGIN PAGE -->
      <div class="page-content">
         <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
         <div id="portlet-config" class="modal hide">
            <div class="modal-header">
               <button data-dismiss="modal" class="close" type="button"></button>
               <h3>Widget Settings</h3>
            </div>
            <div class="modal-body">
               Widget settings form goes here
            </div>
         </div>
         <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
         <!-- BEGIN PAGE CONTAINER-->
         <div class="container-fluid">
            <!-- BEGIN PAGE HEADER-->
            <div class="row-fluid">
               <div class="span12">
                  <!-- BEGIN STYLE CUSTOMIZER -->
                  <!-- END BEGIN STYLE CUSTOMIZER -->    
                  <!-- BEGIN PAGE TITLE & BREADCRUMB-->	
		<!-- END PAGE TITLE & BREADCRUMB-->
               </div>
            </div>
            <!-- END PAGE HEADER-->
            <div id="dashboard">
               <!-- BEGIN DASHBOARD STATS -->
               <div class="row-fluid">
                  <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                     <div class="dashboard-stat blue">
                        <div class="visual">
                           <i class="icon-plane"></i>
                        </div>
                        <div class="details">
                           <div class="number">
                              154
                           </div>
                           <div class="desc">                           
                              Paket dan Diskon ..!
                           </div>
                        </div>
                        <a class="more" href="#">
                        View more <i class="m-icon-swapright m-icon-white"></i>
                        </a>                 
                     </div>
                  </div>
                  <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                     <div class="dashboard-stat green">
                        <div class="visual">
                           <i class="icon-home"></i>
                        </div>
                        <div class="details">
                           <div class="number">549</div>
                           <div class="desc">Diskon Penginapan</div>
                        </div>
                        <a class="more" href="#">
                        View more <i class="m-icon-swapright m-icon-white"></i>
                        </a>                 
                     </div>
                  </div>
                  <div class="span3 responsive" data-tablet="span6  fix-offset" data-desktop="span3">
                     <div class="dashboard-stat purple">
                        <div class="visual">
                           <i class="icon-road"></i>
                        </div>
                        <div class="details">
                           <div class="number">897</div>
                           <div class="desc">Paket Perjalanan</div>
                        </div>
                        <a class="more" href="#">
                        View more <i class="m-icon-swapright m-icon-white"></i>
                        </a>                 
                     </div>
                  </div>
                  <div class="span3 responsive" data-tablet="span6" data-desktop="span3">
                     <div class="dashboard-stat yellow">
                        <div class="visual">
                           <i class="icon-shopping-cart"></i>
                        </div>
                        <div class="details">
                           <div class="number">12,5M$</div>
                           <div class="desc">Total Profit</div>
                        </div>
                        <a class="more" href="#">
                        View more <i class="m-icon-swapright m-icon-white"></i>
                        </a>                 
                     </div>
                  </div>
               </div>
               <!-- END DASHBOARD STATS -->
               <div class="clearfix"></div>
               <div class="row-fluid ">
               <div class="span8">
                  <!-- BEGIN INLINE TABS PORTLET-->
                  <?php $this->load->view($main_view); ?>
                  <!-- END INLINE TABS PORTLET-->
               </div>
                
                <div class="span4">
                  <!-- BEGIN INLINE TABS PORTLET-->
                  <div class="portlet box yellow">
                     <div class="portlet-title">
                        <div class="caption"><i class="icon-star"></i>Iklan</div>
                        <div class="tools">
                           <a href="javascript:;" class="collapse"></a>
                        </div>
                     </div>
                     <div class="portlet-body">
                        <div class="row-fluid">
                           <div class="span12">
                              <!--BEGIN TABS-->
                              <div class="tabbable tabbable-custom">
                                 <ul class="nav nav-tabs">
                                    <li class="active"><a href="#tab_1_1" data-toggle="tab">Pantai</a></li>
                                    <li><a href="#tab_1_2" data-toggle="tab">Pegungan</a></li>
                                    <li><a href="#tab_1_3" data-toggle="tab">Perkebunan</a></li>
                                 </ul>
                                 <div class="tab-content">
                                    <div class="tab-pane active" id="tab_1_1">
                                       <p>I'm in Section 1.</p>
                                       <p>
                                          Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.
                                       </p>
                                    </div>
                                    <div class="tab-pane" id="tab_1_2">
                                       <p>Howdy, I'm in Section 2.</p>
                                       <p>
                                          Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. Ut wisi enim ad minim veniam, quis nostrud exerci tation.
                                       </p>
                                    </div>
                                    <div class="tab-pane" id="tab_1_3">
                                       <p>Howdy, I'm in Section 3.</p>
                                       <p>
                                          Duis autem vel eum iriure dolor in hendrerit in vulputate.
                                          Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat
                                       </p>
                                    </div>
                                 </div>
                              </div>
                              <!--END TABS-->
                           </div>
                        </div>
                     </div>
                      
                  </div>
                  <!-- END INLINE TABS PORTLET-->
               </div>   
                   
                   
            </div>
               <div class="clearfix"></div>
               

               
            </div>
         </div>
         <!-- END PAGE CONTAINER-->    
      </div>
      <!-- END PAGE -->
   </div>
   <!-- END CONTAINER -->
   <!-- BEGIN FOOTER -->
   <div class="footer">
      2013 &copy; Jalan Jalan Wisata by Mix Media.
      <div class="span pull-right">
         <span class="go-top"><i class="icon-angle-up"></i></span>
      </div>
   </div>
   <!-- END FOOTER -->
   <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
   <!-- BEGIN CORE PLUGINS -->
   <?php $this->load->view('footer'); ?>
   
</body>
<!-- END BODY -->
</html>

