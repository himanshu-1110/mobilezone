<?php
require('top.inc.php');

if(isset($_GET['type']) && $_GET['type']!='') {
    $type=get_safe_value($con,$_GET['type']);
    if($type=='status') {
        $opration=get_safe_value($con,$_GET['opration']);
        $id=get_safe_value($con,$_GET['id']);
        if($opration=='active') {
             $status='1';
        }else{
             $status='0';
        }
        $update_status_sql="update brands set status='$status' where id='$id'";
        mysqli_query($con,$update_status_sql);
       
    }

    if($type=='delete') {
        $id=get_safe_value($con,$_GET['id']);
        $delete_sql="delete from brands where id='$id'";
        mysqli_query($con,$delete_sql);
       
    }
}
$sql="select * from brands order by brands asc";
$res=mysqli_query($con,$sql);
?>
<div class="content pb-0">
            <div class="orders">
               <div class="row">
                  <div class="col-xl-12">
                     <div class="card">
                        <div class="card-body">
                           <h4 class="box-title">Brands </h4>
                           <h4 class="box-link"><a href="add_brands.php">Add Brands<i class="fa fa-plus"></i></a> </h4>
                        </div>
                        <div class="card-body--">
                           <div class="table-stats order-table ov-h">
                              <table class="table ">
                                 <thead>
                                    <tr>
                                       <th class="serial">#</th>
                                       <th>ID</th>
                                       <th>Brands</th>
                                       <th></th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                     <?php 
                                       $i=1;
                                       while($row=mysqli_fetch_assoc($res)){?> 
                                    <tr>
                                       <td class="serial"><?php echo $i ?></td>
                                       <td><?php echo $row['id'] ?></td>
                                       <td><?php echo $row['brands'] ?></td>
                                       <td>
                                          <?php
                                           if($row['status']==1){
                                               echo "<span class='badge badge-complete'><a href='?type=status&opration=deactive&id=".$row['id']."'>Active</a></span>&nbsp;";
                                           }else{
                                            echo "<span class='badge badge-pending'><a href='?type=status&opration=active&id=".$row['id']."'>Deactive</a></span>&nbsp;";
                                           }
                                           echo "<span class='badge badge-edit'><a href='add_brands.php?id=".$row['id']."'>Edit</a></span>&nbsp";
                                           echo "<span class='badge badge-delete'><a href='?type=delete&id=".$row['id']."'>Delete</a></span>";
                                         
                                          ?>
                                        </td>
                                    </tr>
                                    <?php } ?>
                                 </tbody>
                              </table>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
          </div>
          <?php
require('footer.inc.php');
?>
