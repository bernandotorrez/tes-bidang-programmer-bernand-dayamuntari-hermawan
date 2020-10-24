<!doctype html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Tes Programemr Nindya Karya - Bernand Dayamuntari Hermawan">
	<meta name="author" content="Bernand Dayamuntari Hermawan">
	<title>Bernand Dayamuntari Hermawan</title>

	<!-- Bootstrap core CSS -->
	<link href="<?=base_url('template/asset/css/bootstrap.min.css');?>" rel="stylesheet">

	<meta name="theme-color" content="#563d7c">


	<style>
		/* Custom page CSS
-------------------------------------------------- */
		/* Not required for template or sticky footer method. */

		main>.container {
			padding: 60px 15px 0;
		}

		.footer {
			background-color: #f5f5f5;
		}

		.footer>.container {
			padding-right: 15px;
			padding-left: 15px;
		}

		code {
			font-size: 80%;
		}

	</style>

</head>

<body>
	<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
		<a class="navbar-brand" href="#">Navbar</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault"
			aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarsExampleDefault">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active">
					<a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Link</a>
				</li>
				<li class="nav-item">
					<a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Dropdown</a>
					<div class="dropdown-menu" aria-labelledby="dropdown01">
						<a class="dropdown-item" href="#">Action</a>
						<a class="dropdown-item" href="#">Another action</a>
						<a class="dropdown-item" href="#">Something else here</a>
					</div>
				</li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>

	<main role="main">

		<div class="container">
			<!-- Example row of columns -->
            <h1>Data Barang</h1>
			<div class="row">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Nama Dept</th>
							<th scope="col">Nama Barang</th>
							<th scope="col">Nama Pengguna</th>
						</tr>
					</thead>
					<tbody>
						<?php 
						$no = 1;
						foreach($data_barang as $barang) { ?>
						<tr>
							<th><?=$no++;?></th>
							<td><?=$barang->nm_dep;?></td>
							<td><?=$barang->nm_brg;?></td>
							<td><?=$barang->nama_pengguna;?></td>
						</tr>
						<?php } ?>
					</tbody>
				</table>
			</div>

			<hr>

		</div> <!-- /container -->

	</main>

	<footer class="container">
		<p>&copy; Tes Programmer Nindya Karya - Bernand Dayamuntari Hermawan</p>
	</footer>
	<script src="<?=base_url('template/asset/js/jquery-3.5.1.slim.min.js');?>"></script>

	<script src="<?=base_url('template/asset/js/bootstrap.bundle.min.js');?>"></script>
</body>

</html>
