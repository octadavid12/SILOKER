<div class="container">
    <h2>Form Keahlian</h2>
    <?php echo form_open("keahlian/save"); ?>
        <div class="form-group row">
            <label for="nama_keahlian" class="col-4 col-form-label">Keahlian</label> 
            <div class="col-8">
                <input id="nama_keahlian" name="nama_keahlian" type="text" class="form-control">
            </div>
        </div>
        <div class="form-group row">
            <div class="offset-4 col-8">
                <button name="submit" type="submit" class="btn btn-primary">Submit</button>
            </div>
        </div>
    <?php echo form_close()?>
</div> 