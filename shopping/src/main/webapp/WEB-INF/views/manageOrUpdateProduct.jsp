<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<div id="content">
	<div class="row">
		<div class="col-sm-12">
			<div class="padding-10" style="background: #fff;">
				<div class="row" style="width: 80%; margin: auto;">
					<div class="col-md-12" style="">
						<h3 style="text-align: center; margin: 2px;">Trainings</h3>
						<p class="sint">
							<span> </span>
						</p>
					</div>

				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-8 col-md-offset-2">
			<div class="row">
				<div class="col-md-2 col-md-offset-10" style="padding-bottom: 15px;">
					<a href="${contextRoot}/manage/training"
						class="btn btn-primary btn-block">Add New Training </a>
				</div>
				<c:forEach items="${products}" var="pro">
					<div class="col-xs-12 col-sm-4 ">
						<div class="panel panel-success pricing-big"
							style="box-shadow: 3px 3px 3px #ccc;">
							<div class="panel-heading" style="text-align: center;">
								<h3 class="panel-title"
									style="font-size: 16px; font-weight: 100; width: 100%; overflow: hidden; padding: 0px 0px 6px 0px; text-overflow: ellipsis !important; white-space: nowrap;">${pro.name}</h3>
								<img style="width: 80%; border-radius: 2px;"
									src="${img}/${pro.code}.jpg">
							</div>
							<div class="panel-body no-padding text-align-center">
								<div class="the-price" style="padding: 12px 0;">
									<h3 style="margin: 0; font-size: 14px;">
										Price - <i class="fa fa-rupee text-success"></i>
										${pro.unitPrice}
									</h3>
								</div>
								<div class="price-features content1"
									style="max-height: 164px !important; min-height: 164px; overflow: auto;">
									<ul class="list-unstyled text-left">
										<c:set var="dateParts" value="${fn:split(pro.topics, ';')}" />
										<c:forEach items="${dateParts}" var="q">
											<li><i class="fa fa-check text-success"></i> ${q}</li>
										</c:forEach>
									</ul>
								</div>
							</div>
							<div class="text-align-center"
								style="padding: 12px; background: #e8e6e6;">
								<div class="row">
									<div class="col-xs-12 col-sm-4">
										<a href="javascript:void(0);"
											class="btn btn-default btn-block">Active </a>
									</div>
									<div class="col-xs-12 col-sm-4">
										<a href="javascript:void(0);"
											class="btn btn-default btn-block">Edit </a>
									</div>
									<div class="col-xs-12 col-sm-4">
										<a href="javascript:void(0);"
											class="btn btn-default btn-block">View </a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</div>