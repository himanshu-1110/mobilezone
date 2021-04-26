<?php
function pr($arr) {
  echo '<pre>';  
  print_r($arr);
}

function prx($arr) {
    echo '<pre>';
    print_r($arr);
    die();
}

function get_safe_value($con,$str){
  if ($str!='') {
    $str=trim($str);
  return mysqli_real_escape_string($con,$str);
  }
}

function get_model($con,$limit='',$cat_id='',$model_id='',$search_str='',$sort_order='',$is_best_seller='') {
  $sql="select model.*,brands.brands from model,brands where model.status=1 ";
  if($cat_id!='') {
    $sql.=" and model.brands_id=$cat_id ";
  }

  if($model_id!='') {
    $sql.=" and model.id=$model_id ";
  }
    if($is_best_seller!='') {
    $sql.=" and model.best_seller=1 ";
  }
  $sql.=" and model.brands_id=brands.id ";
    if($search_str!='') {
    $sql.=" and (model.name like '%$search_str%' or model.description like '%$search_str%') ";
  }
    if($sort_order!=''){
		$sql.=$sort_order;
	}else{
		$sql.=" order by model.id desc";
	}
  
  if($limit!='') {
    $sql.=" limit $limit";
  }

  $res=mysqli_query($con,$sql);
  $data=array();
  while($row=mysqli_fetch_assoc($res)) {
    $data[]=$row;
  }
  return $data;
}

?>