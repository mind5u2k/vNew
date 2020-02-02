<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<style>
em {
	color: #f00 !important;
	font-style: unset;
}
</style>

<div id="content">
	<div class="row">
		<div class="col-sm-12">
			<div class="padding-10" style="background: #fff;">
				<div class="row" style="width: 80%; margin: auto;">
					<div class="col-md-12" style="">
						<h3 style="text-align: center; margin: 2px;">Add New Training</h3>
						<p class="sint">
							<span> </span>
						</p>
					</div>

				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12 col-md-12 col-lg-12">
			<div class="containerPanel" style="padding-top: 25px;">
				<c:if test="${not empty errorMessage}">
					<div class="row">
						<div class="col-xs-12 col-md-offset-3 col-md-6">
							<div class="alert alert-danger fade in">${errorMessage}</div>
						</div>
					</div>
				</c:if>
				<c:if test="${not empty message}">
					<div class="row">
						<div class="col-xs-12 col-md-offset-3 col-md-6">
							<div class="alert alert-success fade in">${message}</div>
						</div>
					</div>
				</c:if>
				<div class="row">
					<div class="col-md-offset-3 col-md-6">
						<div class="jarviswidget jarviswidget-sortable" id="wid-id-8"
							data-widget-editbutton="false" data-widget-custombutton="false"
							role="widget">
							<div role="content">
								<div class="widget-body no-padding"
									style="border-top: 1px solid #ccc;">
									<sf:form class="smart-form" modelAttribute="product"
										action="${contextRoot}/manage/product" method="POST"
										enctype="multipart/form-data">
										<header>New Training</header>

										<fieldset>

											<section>
												<label class="label">Training Name</label> <label
													class="input"> <i class="icon-append fa fa-tag"></i>
													<sf:input type="text" path="name" class="form-control"
														placeholder="Product Name" /> <sf:errors path="name"
														cssClass="help-block" element="em" />
												</label>
											</section>
											<section>
												<label class="label">Duration</label> <label class="input">
													<i class="icon-append fa fa-tag"></i> <sf:input type="text"
														path="duration" class="form-control"
														placeholder="Duration" /> <sf:errors path="duration"
														cssClass="help-block" element="em" />
												</label>
											</section>

											<section>
												<label class="label">Description</label> <label
													class="textarea"> <i
													class="icon-append fa fa-comment"></i> <sf:textarea
														path="description" class="form-control"
														placeholder="Enter your description here!" /> <sf:errors
														path="description" cssClass="help-block" element="em" />
												</label>
											</section>
											<section>
												<label class="label">Topics</label> <label class="textarea">
													<i class="icon-append fa fa-comment"></i> <sf:textarea
														path="topics" class="form-control"
														placeholder="Enter your Topics here!" /> <sf:errors
														path="topics" cssClass="help-block" element="em" />
												</label>
											</section>
											<section>
												<label class="label">Unit Price</label> <label class="input">
													<i class="icon-append fa fa-tag"></i> <sf:input
														type="number" path="unitPrice" class="form-control"
														placeholder="Enter Unit Price" /> <sf:errors
														path="unitPrice" cssClass="help-block" element="em" />
												</label>
											</section>
											<section>
												<label class="label">File</label> <label class="input">
													<i class="icon-append fa fa-tag"></i> <sf:input type="file"
														path="file" class="form-control" /> <sf:errors
														path="file" cssClass="help-block" element="em" />
												</label>
											</section>
											<section>
												<label class="select"> <sf:select path="categoryId"
														items="${categories}" itemLabel="name" itemValue="id"
														class="form-control" /> <i></i>
												</label>
											</section>
										</fieldset>

										<footer>
											<div class="text-right">
												<br />
												<sf:hidden path="id" />
												<sf:hidden path="code" />
												<sf:hidden path="supplierId" />
												<sf:hidden path="active" />

											</div>
											<button type="button" class="btn btn-default"
												data-toggle="modal" data-target="#myCategoryModal">Add
												New Category</button>
											<button type="submit" class="btn btn-primary">Save</button>
										</footer>

										<div class="message">
											<i class="fa fa-thumbs-up"></i>
											<p>Your message was successfully sent!</p>
										</div>
									</sf:form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal fade" id="myCategoryModal" tabindex="-1"
					role="dialog" aria-labelledby="myModalLabel">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header"
								style="padding: 11px 27px; background: #514f4f; color: #fff;">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">New Category</h4>
							</div>
							<div class="modal-body">
								<sf:form id="categoryForm" class="form-horizontal"
									modelAttribute="category"
									action="${contextRoot}/manage/category" method="POST">
									<div class="form-group">
										<label class="control-label col-md-4">Name</label>
										<div class="col-md-8 validate">
											<sf:input type="text" path="name" class="form-control"
												placeholder="Category Name" />
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-md-4">Description</label>
										<div class="col-md-8 validate">
											<sf:textarea path="description" class="form-control"
												placeholder="Enter category description here!" />
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-offset-4 col-md-4">
											<input type="submit" name="submit" value="Save"
												class="btn btn-primary" />
										</div>
									</div>
								</sf:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>