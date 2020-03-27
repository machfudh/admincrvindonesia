<div class="am-sideleft">
            <ul class="nav am-sideleft-tab">
                <li class="nav-item">
                    <a href="#mainMenu" class="nav-link active"><i class="icon ion-ios-home-outline tx-24"></i></a>
                </li>
                <li class="nav-item">
                    <a href="#emailMenu" class="nav-link"><i class="icon ion-ios-email-outline tx-24"></i></a>
                </li>
                <li class="nav-item">
                    <a href="#chatMenu" class="nav-link"><i class="icon ion-ios-chatboxes-outline tx-24"></i></a>
                </li>
                <li class="nav-item">
                    <a href="#settingMenu" class="nav-link"><i class="icon ion-ios-gear-outline tx-24"></i></a>
                </li>
            </ul>

            <div class="tab-content">
                <div id="mainMenu" class="tab-pane active">
                    <ul class="nav am-sideleft-menu">
                        <li class="nav-item">
                            <a href="<?php echo base_url() .'index.php/welcome' ?>" class="nav-link">
                                <i class="icon ion-ios-home-outline"></i>
                                <span>Dashboard</span>
                            </a>
                        </li><!-- nav-item -->
                         <?php
                         $this->db->where('idroolcrv', $this->session->userdata('idrool'));
                         $menumasnum = $this->db->get('v_menumaster')->num_rows();
                         if ($menumasnum > 0 ){
                         ?>    
                        <li class="nav-item">
                            <a href="" class="nav-link with-sub">
                                <i class="icon ion-ios-gear-outline"></i>
                                <span>Master</span>
                            </a>
                            <ul class="nav-sub">
                                <?php
                                $this->db->where('idroolcrv', $this->session->userdata('idrool'));
                                $menumaster = $this->db->get('v_menumaster')->result();
                                if ($menumaster != "" ){  
                                    foreach ($menumaster as $master) {
                                ?>
                                <li class="nav-item"><?php echo anchor($master->linkurl,$master->nama,'class="nav-link"'); ?></li>
                                <?php }} ?>
                                                        </ul>
                        </li><!-- nav-item -->
                        <?php } ?>
                        <?php
                         $this->db->where('idroolcrv', $this->session->userdata('idrool'));
                         $menunumrows = $this->db->get('v_menudata')->num_rows();
                         if ($menunumrows > 0) { 
                         ?>    
                   
                        <li class="nav-item">
                            <a href="" class="nav-link with-sub">
                                <i class="icon ion-ios-filing-outline"></i>
                                <span>Data</span>
                            </a>
                            <ul class="nav-sub">
                                <?php
                                $this->db->where('idroolcrv', $this->session->userdata('idrool'));
                                $menudata = $this->db->get('v_menudata')->result();
                                if ($menudata != "" ){  
                                    foreach ($menudata as $datax) {
                                ?>        
                                <li class="nav-item"><?php echo anchor($datax->linkurl,$datax->nama,'class="nav-link"'); ?></li>
                                <?php }} ?>                            
                            </ul>
                        </li><!-- nav-item -->
                        <?php } ?>
                        <li class="nav-item">
                            <a href="" class="nav-link with-sub">
                                <i class="icon ion-ios-analytics-outline"></i>
                                <span>Report</span>
                            </a>
                            <ul class="nav-sub">
                                <li class="nav-item"><?php echo anchor('report','Report Member ','class="nav-link"'); ?></li>
                                <li class="nav-item"><?php echo anchor('reportnewmember','Report new Member ','class="nav-link"'); ?></li>
                                <li class="nav-item"><?php echo anchor('reportregul','Report Registrsi Ulang','class="nav-link"'); ?></li>
                            </ul>
                        </li><!-- nav-item -->
                        <?php
                        if ($this->session->userdata('idrool') < 4){ ?>
                        <li class="nav-item">
                            <a href="" class="nav-link with-sub">
                                <i class="icon ion-ios-navigate-outline"></i>
                                <span>User</span>
                            </a>
                            <ul class="nav-sub">
                                <li class="nav-item"><?php echo anchor('user','User','class="nav-link"'); ?></li>
                            </ul>
                        </li><!-- nav-item -->
                        <?php } ?>
                     </ul>
                </div><!-- #mainMenu -->
                <div id="emailMenu" class="tab-pane">
                   
                </div><!-- #emailMenu -->
                <div id="chatMenu" class="tab-pane">
                    
                </div><!-- #chatMenu -->
                <div id="settingMenu" class="tab-pane">
             
                </div><!-- #settingMenu -->
            </div><!-- tab-content -->
        </div><!-- am-sideleft -->