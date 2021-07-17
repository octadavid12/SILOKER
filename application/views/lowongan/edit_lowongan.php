<?php
$server   = "localhost";
$username = "root";
$password = "";
$database = "dbsilokernf";
// Koneksi dan memilih database di server
$conn = mysqli_connect($server,$username,$password,$database) or die("Gagal");

?>

<div class="container">
    <h2>Form Edit Data Lowongan</h2>
    <?php echo form_open("lowongan/save"); ?>
    <div class="form-group row">
        <label for="deskripsi_pekerjaan" class="col-4 col-form-label">Deskripsi Pekerjaan</label> 
        <div class="col-8">
            <input id="deskripsi_pekerjaan" name="deskripsi_pekerjaan" type="text" value="<?=$objlowongan->deskripsi_pekerjaan?>" class="form-control">
        </div>
    </div>
    <div class="form-group row">
        <label for="tanggal_akhir" class="col-4 col-form-label">Tanggal Akhir</label> 
        <div class="col-8">
            <input id="tanggal_akhir" name="tanggal_akhir" type="date" value="<?=$objlowongan->tanggal_akhir?>" class="form-control">
        </div>
    </div> 
    <!-- <div class="form-group row">
        <label for="mitra_id" class="col-4 col-form-label">Mitra ID</label> 
        <div class="col-8">
            <input id="mitra_id" name="mitra_id" type="int" value="*<#?=$objlowongan->mitra_id?>" class="form-control">
        </div>
    </div>  -->
    <div class="form-group row">
        <label for="tanggal_akhir" class="col-4 col-form-label">Mitra</label> 
        <div class="col-8">
            <select name="mitra_id" class=" custom-select" >
                <?php
                //query menampilkan nama unit kerja ke dalam combobox
                $query =mysqli_query($conn, "SELECT * FROM mitra WHERE id=$objlowongan->mitra_id ");
                while ($data = mysqli_fetch_array($query)) {
                ?>  
                <option selected value="<?=$data['id']?>"><?php echo $data['nama_mitra'];?></option>
                <?php
                }
                ?>
                <?php
                // include "koneksi.php";
                //query menampilkan nama unit kerja ke dalam combobox
                $query =mysqli_query($conn, "SELECT * FROM mitra ORDER BY id");
                while ($data = mysqli_fetch_array($query)) {
                ?>

                <option value="<?=$data['id']?>"><?php echo $data['nama_mitra'];?></option>
                <?php
                }
                ?>
            </select>
        </div>
    </div>
    <div class="form-group row">
        <div class="offset-4 col-8">
            <button name="submit" type="submit" class="btn btn-success">Update</button>
        </div>
    </div>
    <input type="hidden" name="idlowongan" value="<?=$objlowongan->id?>"/>
    <?php echo form_close()?>
</div>