	</header><!--/header-->
	 <div id="contact-page" class="container">
    	<div class="bg">
	    	<div class="row">    		
	    		<div class="col-sm-12">    			   			
					<h2 class="title text-center"><strong>Form Pendaftaran</strong></h2>
				</div>
			</div>			 		
		</div>
        <!-- Main content -->
        <section class="content">
        <!-- Main row -->
        <div class="row">
          <!-- Left col -->
          <section class="col-lg-12">
            <!-- Chat box -->
            <div class="box">
              <div class="box-body chat" id="chat-box">
                <!-- chat item -->
                <div class="item">
                  <form role="form" action="<?php echo base_url(); ?>produk/savedaftar" method="POST" enctype="multipart/form-data">
                  <div class="col-lg-12">
                    <div class="form-group">
                      <label for="">Nama Kost <span ng-hide="addNewRoom.inputName.$valid" style="color:orange;font-size:smaller;">*Harus Diisi</span></label>
                        <input type="text" class="form-control" value="" id="" name="judul" placeholder="Isikan Nama Kost" required>
                    </div>

                    <div class="form-group">
                      <label for="">Harga Perbulan <span ng-hide="addNewRoom.inputName.$valid" style="color:orange;font-size:smaller;">*Harap Diisi Tanpa Titik / Koma</span></label>
                        <input type="number" class="form-control" value="" id="" name="harga" placeholder="Harga Perbulan" required>                        
                    </div>
                    <div class="form-group">
                      <label for="">Jumlah Kamar <span ng-hide="addNewRoom.inputName.$valid" style="color:orange;font-size:smaller;">*Harus Diisi</span></label>
                        <input type="number" class="form-control" value="" id="" name="jumlah" placeholder="Jumlah Kamar Yang Tersedia" required>                        
                    </div>
                    <div class="form-group">
                      <label for="">Kondisi Kamar <span ng-hide="addNewRoom.inputName.$valid" style="color:orange;font-size:smaller;">*Harus Diisi</span></label>
                        <input type="text" class="form-control" value="" id="" name="kondisi" placeholder="Kondisi Kamar Kost" required>                        
                    </div>
                  </div>
                  <div class="col-lg-12">
                    <div class="form-group">
                      <label for="">Lokasi Kost <span ng-hide="addNewRoom.inputName.$valid" style="color:orange;font-size:smaller;">*Harus Dipilih</span></label></label>
                        <select name="id_lokasi" class="form-control" required>
                          <option></option>
                          <?php foreach($optlokasi as $row) { ?>
                              <option value="<?php echo $row['id_lokasi'] ?>"><?php echo $row['lokasi'] ?></option>
                          <?php } ?>
                        </select>                        
                    </div>

                    <div class="form-group">
                      <label for="">Kategori <span ng-hide="addNewRoom.inputName.$valid" style="color:orange;font-size:smaller;">*Harus Dipilih</span></label></label>
                        <select name="id_kat" class="form-control" required>
                          <option></option>
                          <?php foreach($optkategori as $row) { ?>
                              <option value="<?php echo $row['id_kat'] ?>"><?php echo $row['kategori'] ?></option>
                          <?php } ?>
                        </select> 
                    </div>
                    <div style="display: none;">
                    	<div class="form-group">
                      		<label for="">Status</label>
                    		<select name="status" class="form-control">
                      			<option value="draft">Draft</option>
                    		</select>
                    	</div>
                    </div>
                    <div class="form-group">
                      <label for="">Keterangan Kost</label>
                        <textarea style="height:100px" required=""  class="form-control" name="ket" placeholder="Keterangan Fasilitas Kost"></textarea>                
                    </div>
                    <div class="form-group">
                      <label for="">Foto</label>
                        <input type="file" class="form-control" value="" id="" name="file_upload" placeholder="" required="">                        
                    </div>
                    
                  </div>

                  </div><!-- /.item -->
                <div class="chat-box item">
                	<div class="col-lg-12">
                 		<button type="submit" class="btn btn-primary pull-right">Kirim</button>
                	</div>
                </div><!-- /.col -->

              </div><!-- /.chat -->
            </div><!-- /.box (chat box) -->
          </section><!-- /.Left col -->
          <!-- right col (We are only adding the ID to make the widgets sortable)-->
          <section class="col-lg-5 connectedSortable">

          </section><!-- right col -->
        </div><!-- /.row (main row) -->

      </section><!-- /.content -->
    </div><!-- /.content-wrapper -->
<br><br><br>