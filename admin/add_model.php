<?php
require('top.inc.php');
$brands_id='';
$name='';
$mrp='';
$price='';
$qty='';
$image='';
$short_desc='';
$description='';
$meta_title='';
$meta_desc='';
$meta_keyword='';
$best_seller='';
$msg='';
$image_required='required';

if(isset($_GET['id']) &&$_GET['id']!='') {
    $image_required='';
   $id=get_safe_value($con,$_GET['id']);
   $res=mysqli_query($con,"select * from model where id='$id' ");
   $check=mysqli_num_rows($res);
   if($check>0) {
   $row=mysqli_fetch_assoc($res);
    $brands_id=$row['brands_id'];
    $name=$row['name'];
    $mrp=$row['mrp'];
    $price=$row['price'];
    $qty=$row['qty'];
    $short_desc=$row['short_desc'];
    $description=$row['description'];
    $meta_title=$row['meta_title'];
    $meta_desc=$row['meta_desc'];
    $meta_keyword=$row['meta_keyword'];
    $best_seller=$row['best_seller'];
   }else{
      header('location:model.php');
      die();
   }
    
}

if(isset($_POST['submit'])) {
    $brands_id=get_safe_value($con,$_POST['brands_id']);
    $name=get_safe_value($con,$_POST['name']);
    $mrp=get_safe_value($con,$_POST['mrp']);
    $price=get_safe_value($con,$_POST['price']);
    $qty=get_safe_value($con,$_POST['qty']);
    $short_desc=get_safe_value($con,$_POST['short_desc']);
    $description=get_safe_value($con,$_POST['description']);
    $meta_title=get_safe_value($con,$_POST['meta_title']);
    $meta_desc=get_safe_value($con,$_POST['meta_desc']);
    $meta_keyword=get_safe_value($con,$_POST['meta_keyword']);
    $best_seller=get_safe_value($con,$_POST['best_seller']);

    $res=mysqli_query($con,"select * from model where name='$name' ");
    $check=mysqli_num_rows($res);
    if($check>0) {
      if(isset($_GET['id']) && $_GET['id']!='') {
        $getData=mysqli_fetch_assoc($res);
        if($id==$getData['id']) {

        }else{
         $msg="This Model already exist";
  
        }
      }else{
       $msg="This Model already exist";
      }
    }
    if($_FILES['image'] ['type']!='' && ($_FILES['image'] ['type']!='image/png' && $_FILES['image'] ['type']!='image/jpg' && $_FILES['image'] ['type']!='image/jpeg')) {
               $msg="only png,jpg,jpeg image formate";
    }

    if($msg=='') {
       if(isset($_GET['id']) && $_GET['id']!='') {
        if($_FILES['image'] ['name']!='') {
            $image=rand(111111111,999999999).'_'.$_FILES['image'] ['name'];
             move_uploaded_file($_FILES['image'] ['tmp_name'],MODEL_IMAGE_SERVER_PATH.$image);
            $update_sql="update model set brands_id='$brands_id',name='$name',mrp='$mrp',price='$price',qty='$qty',short_desc='$short_desc',description='$description',meta_desc='$meta_title',meta_title='$meta_desc',meta_keyword='$meta_keyword',image='$image',best_seller='$best_seller' where id='$id' ";      
            }else{
                $update_sql="update model set brands_id='$brands_id',name='$name',mrp='$mrp',price='$price',qty='$qty',short_desc='$short_desc',description='$description',meta_desc='$meta_title',meta_title='$meta_desc',meta_keyword='$meta_keyword',best_seller='$best_seller' where id='$id' ";
            }
           mysqli_query($con,$update_sql);
         }else{
             $image=rand(111111111,999999999).'_'.$_FILES['image'] ['name'];
             move_uploaded_file($_FILES['image'] ['tmp_name'],MODEL_IMAGE_SERVER_PATH.$image);
         mysqli_query($con,"insert into model(brands_id,name,mrp,price,qty,short_desc,description,meta_title,meta_desc,meta_keyword,status,image,best_seller) values('$brands_id','$name','$mrp','$price','$qty','$short_desc','$description','$meta_title','$meta_desc','$meta_keyword',1,'$image','$best_seller')");
          
        }
         header('location:model.php');
         die();
    }
}


?>
<div class="content pb-0">
            <div class="animated fadeIn">
               <div class="row">
                  <div class="col-lg-12">
                     <div class="card">
                        <div class="card-header"><strong>Model</strong><small> Form</small></div>
                       <form method="post" enctype="multipart/form-data">
                        <div class="card-body card-block">
                           <div class="form-group">
                               <label for="brands" class="form-control-label">Brands</label>
                                <select class="ferm-control" name="brands_id">
                                     <option>Select Brand</option>
                                     <?php
                                     $res=mysqli_query($con,"select id,brands from brands order by brands desc");
                                        while($row=mysqli_fetch_assoc($res)) {
                                              if($row['id']==$brands_id){
                                                echo "<option selected value=".$row['id'].">".$row['brands']."</option>";
                                              }else{
                                                echo "<option value=".$row['id'].">".$row['brands']."</option>";
                                              }
                                           
                                        }
                                     ?>
                                </select>   
                            </div>

                            <div class="form-group">
                               <label for="model" class=" form-control-label">Model Name</label>
                               <input type="text" name="name" placeholder="Enter Model name" class="form-control" required value="<?php echo $name ?>">
                            </div>

                            <div class="form-group">
                               <label for="brands" class="form-control-label">Best Seller</label>
                                <select class="ferm-control" name="best_seller" required>
                                     <option value=''>Select</option>
                                      <?php
										if($best_seller==1){
											echo '<option value="1" selected>Yes</option>
												<option value="0">No</option>';
										}elseif($best_seller==0){
											echo '<option value="1">Yes</option>
												<option value="0" selected>No</option>';
										}else{
											echo '<option value="1">Yes</option>
												<option value="0">No</option>';
										}
										?>
                                </select>   
                            </div>
                           
                            <div class="form-group">
                               <label for="model" class=" form-control-label">MRP</label>
                               <input type="text" name="mrp" placeholder="Enter Model Mrp" class="form-control" required value="<?php echo $mrp ?>">
                            </div>

                            <div class="form-group">
                               <label for="model" class=" form-control-label">Price</label>
                               <input type="text" name="price" placeholder="Enter Model Price" class="form-control" required value="<?php echo $price ?>">
                            </div>

                            <div class="form-group">
                               <label for="model" class=" form-control-label">Qty</label>
                               <input type="text" name="qty" placeholder="Enter Model Qty" class="form-control" required value="<?php echo $qty ?>">
                            </div>

                            <div class="form-group">
                               <label for="model" class=" form-control-label">Image</label>
                               <input type="file" name="image"  class="form-control" <?php echo $image_required ?>>
                            </div>

                            <div class="form-group">
                               <label for="model" class=" form-control-label">Short Description</label>
                               <textarea type="text" name="short_desc" placeholder="Enter Model short_desc" class="form-control" required><?php echo $short_desc ?></textarea>
                            </div>

                            <div class="form-group">
                               <label for="model" class=" form-control-label">Description</label>
                               <textarea type="text" name="description" placeholder="Enter Model description" class="form-control" required><?php echo $description ?></textarea>
                            </div>

                            <div class="form-group">
                               <label for="model" class=" form-control-label">Meta Title</label>
                               <textarea type="text" name="meta_title" placeholder="Enter Model meta_title" class="form-control" ><?php echo $meta_title ?></textarea>
                            </div>
      
                            <div class="form-group">
                               <label for="model" class=" form-control-label">Meta Description</label>
                               <textarea type="text" name="meta_desc" placeholder="Enter Model Meta description" class="form-control"><?php echo $meta_desc ?></textarea>
                            </div>

                            <div class="form-group">
                               <label for="model" class=" form-control-label">Meta Keyword</label>
                               <textarea type="text" name="meta_keyword" placeholder="Enter Model Meta keyword" class="form-control"><?php echo $meta_keyword ?></textarea>
                            </div>

                           <button name="submit" type="submit" class="btn btn-lg btn-info btn-block">
                           <span  name="submit">Submit</span>
                           </button>
                           <div class="field_error"><?php echo $msg?></div>
</form>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>

<?php
require('footer.inc.php');
?>