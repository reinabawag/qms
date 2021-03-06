<div class="container">
	<h3 class="page-header">
		<!-- <a href="<?=$this->agent->referrer()?>" role="button" class="btn btn-default"><span class="glyphicon glyphicon-circle-arrow-left"></span></a> -->
		Manage Division
	</h3>
	<a href="<?php echo site_url('division/create'); ?>">Create New Division</a><br><br>
	<?php if (isset($_SESSION['msg'])): ?>
		<div class="alert alert-success" role="alert"><?=$_SESSION['msg']?></div>
	<?php endif; ?>
	<table class="table table-striped table-bordered" id="table">
		<thead>
			<tr>
				<th>Description</th>
				<th>Options</th>
				<th>Status</th>
			</tr>
		</thead>
		<tbody>
			<?php foreach ($divisions as $division): ?>
			<tr>
				<td><?=$division->div_name?></td>
				<td><a href="<?=site_url("division/update/$division->divid")?>">Update</a></td>
				<td><?=$division->visible == TRUE ? 'Active' : 'Inactive' ?></td>
			</tr>
			<?php endforeach; ?>
		</tbody>
	</table>
