<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
.panel-success:hover {
	box-shadow: 4px 3px 8px #457531;
}

.panel-body:after {
	content: none;
}

.well {
	border: 0 !important;
}
</style>

<div id="content" style="opacity: 1; padding-top: 24px;">
	<article class="col-sm-12 col-md-12 col-lg-8 sortable-grid ui-sortable">
		<div class="jarviswidget   jarviswidget-sortable" id="wid-id-1"
			data-widget-editbutton="false" data-widget-fullscreenbutton="false"
			role="widget">
			<div role="content">
				<div class="widget-body widget-hide-overflow no-padding"
					style="min-height: 406px; max-height: 406px;">
					<div class="row">
						<div class="col-sm-12" style="padding-right: 0;">
							<div class="well" style="padding: 0; border: 0;">
								<div id="myCarousel-2" class="carousel slide">
									<ol class="carousel-indicators">
										<li data-target="#myCarousel-2" data-slide-to="0"
											class="active"></li>
										<li data-target="#myCarousel-2" data-slide-to="1" class=""></li>
										<li data-target="#myCarousel-2" data-slide-to="2" class=""></li>
										<li data-target="#myCarousel-2" data-slide-to="3" class=""></li>
										<li data-target="#myCarousel-2" data-slide-to="4" class=""></li>
									</ol>
									<div class="carousel-inner">
										<div class="item active">
											<img src="${images}/images/i1.jpg" alt=""
												style="min-height: 406px; max-height: 406px;">
										</div>
										<div class="item ">
											<img src="${images}/images/i2.jpg" alt=""
												style="min-height: 406px; max-height: 406px;">
										</div>
										<div class="item">
											<img src="${images}/images/i3.jpg" alt=""
												style="min-height: 406px; max-height: 406px;">
										</div>
										<div class="item">
											<img src="${images}/images/i4.jpg" alt=""
												style="min-height: 406px; max-height: 406px;">
										</div>
										<div class="item">
											<img src="${images}/images/i5.jpg" alt=""
												style="min-height: 406px; max-height: 406px;">
										</div>
									</div>
									<a class="left carousel-control" href="#myCarousel-2"
										data-slide="prev"> <span
										class="glyphicon glyphicon-chevron-left"></span>
									</a> <a class="right carousel-control" href="#myCarousel-2"
										data-slide="next"> <span
										class="glyphicon glyphicon-chevron-right"></span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</article>
	<article class="col-sm-12 col-md-12 col-lg-4 sortable-grid ui-sortable">
		<div class="jarviswidget   jarviswidget-sortable" id="wid-id-1"
			data-widget-editbutton="false" data-widget-fullscreenbutton="false"
			role="widget" style="border-top: 1px solid #ccc;">
			<div role="content">
				<div class="widget-body widget-hide-overflow no-padding content1"
					style="min-height: 403px; max-height: 403px; overflow-y: auto;">
					<div class="row">
						<div class="col-sm-12"
							style="padding: 12px 13px 13px 13px; background: #c5c6ca;">
							<h3 style="text-align: center; margin: 2px;">Upcoming
								Trainings</h3>
						</div>
						<div class="col-sm-12" style="padding: 0;">
							<div class="well no-padding">
								<table class="table table-striped table-forum">
									<tbody>
										<c:forEach items="${products}" var="pro">
											<tr>
												<td class="text-center"
													style="width: 40px; padding: 0 10px 0 29px;"><img
													style="width: 75px; border-radius: 2px;"
													src="${img}/${pro.code}.jpg"></td>
												<td>
													<h4>
														<a href="#ajax/forum-post.html"> ${pro.name} </a> <small
															style="color: #446c8e;"> ${pro.duration} </small>
													</h4>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</article>
	<div class="row">
		<div class="col-sm-12">
			<div class="padding-10" style="background: #fff;">
				<div class="row" style="width: 80%; margin: auto;">
					<div class="col-md-12" style="padding-bottom: 15px;">
						<h3 style="text-align: center; margin: 2px;">ARM Tool</h3>
						<p class="sint">
							<span> </span>
						</p>
					</div>
					<div class="col-md-4">
						<img src="${images}/images/loginBack.png" class="img-responsive"
							alt="img">
					</div>
					<div class="col-md-8 padding-left-0">
						<p style="font-size: 15px;">
							Vedhacon introduces ARM Tool, One Stop Solution for Enterprise
							Risk Management. This tool comes handy when Organizations Do not
							have in-house Risk Management Skills & Technology, Do not want to
							divert focus from their core business and Do not wish to invest
							in developing inhouse skills and technology. This Tool bridges
							the gap and has features Like Assessment with Customization,
							Graphical Reporting And Live Monitoring, Automated Reminders,
							Report Extraction, Logs, Risk Acceptance etc which makes it A
							Must Have Tool. Refer our ARM Tool Section to understand more
							about it and request for Free Trial. <br> <br>
						</p>
						<a class="btn btn-primary" href="javascript:void(0);"> Read
							more </a>
					</div>
				</div>
				<div class="row"
					style="width: 80%; margin: auto; border-top: 1px solid #ccc; padding-top: 40px; margin-top: 40px;">
					<div class="col-md-12" style="padding-bottom: 15px;">
						<h3 style="text-align: center; margin: 2px;">Trainings</h3>
						<p class="sint">
							<span> </span>
						</p>
					</div>
					<div class="col-md-4">
						<img src="${images}/images/trainings.png" class="img-responsive"
							alt="img">
					</div>
					<div class="col-md-8 padding-left-0">
						<p style="font-size: 15px;">
							Vedhacon strongly believes that enablement through Training is
							the key to success of any program. We have introduced trainings
							which focus on implementors skill development in domains like
							Risk Management, Information Security, Privacy, GDPR and Fraud
							Risk Management. Intent of these trainings is to transfer
							knowledge and reduce external dependency. Refer our Training
							Section for details. <br> <br>
						</p>
						<a class="btn btn-primary" href="javascript:void(0);"> Read
							more </a>
					</div>
				</div>
				<div class="row"
					style="width: 80%; margin: auto; border-top: 1px solid #ccc; padding-top: 40px; margin-top: 40px;">
					<div class="col-md-12" style="padding-bottom: 15px;">
						<h3 style="text-align: center; margin: 2px;">Privacy -
							Training, Consulting, Implementation (TCI Model)</h3>
						<p class="sint1">
							<span> </span>
						</p>
					</div>
					<div class="col-md-4">
						<img src="${images}/images/tciModel1.png" class="img-responsive"
							alt="img" style="max-width: 78%;">
					</div>
					<div class="col-md-8 padding-left-0">
						<p style="font-size: 15px;">
							Without privacy life would be too risky. An individual would be
							highly vulnerable to control by others and shall lose freedom. An
							individual can be manipulated, harmed or exploited in absence of
							privacy or due to privacy breach. Hence, Privacy is extremely
							important for an individual to feel secure and free. There are
							more than 80 countries in the world which have some kind of Data
							Privacy & Protection Law. Vedhacon has a unique TCI Model to
							Train staff on Privacy fundamentals & key laws, offer Consulting
							against key requirements and support Implementation of controls.
							<br> <br>
						</p>
						<a class="btn btn-primary" href="javascript:void(0);"> Read
							more </a>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-3" style="margin-top: 60px; margin-bottom: 60px;"></div>
		<div class="col-sm-6" style="margin-top: 60px; margin-bottom: 60px;">
			<div style="margin: auto; border: 1px solid #ccc; padding: 13px;">
				<form class="form-horizontal">
					<fieldset style="text-align: center;">
						<legend>ARM Tool - Request Free Tool</legend>
						<div class="form-group">
							<label class="col-md-2 control-label">Name</label>
							<div class="col-md-10">
								<input class="form-control" placeholder="Name" type="text">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">Email</label>
							<div class="col-md-10">
								<input class="form-control" placeholder="Email" type="text">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">Organization</label>
							<div class="col-md-10">
								<input class="form-control" placeholder="Organization"
									type="text">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">Country</label>
							<div class="col-md-10">
								<input class="form-control" placeholder="Country" type="text">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">Expectation From
								Tool</label>
							<div class="col-md-10">
								<textarea class="form-control" placeholder=" " rows="4"></textarea>
							</div>
						</div>
					</fieldset>
					<div class="form-actions">
						<div class="row">
							<div class="col-md-12">
								<button class="btn btn-primary" type="submit">
									<i class="fa fa-save"></i> Submit
								</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
