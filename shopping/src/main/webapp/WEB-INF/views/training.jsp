<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div id="content">
	<div class="row">
		<div class="col-sm-12" style="text-align: center; padding: 17px;">
			<img src="${images}/images/trainingMain.png" alt="img">
		</div>
	</div>
	<div class="row">
		<div class="col-sm-8 col-md-offset-2" style="font-size: 15px;">
			<p style="padding-bottom: 25px; padding-top: 25px;">Vedhacon
				strongly believes that enablement through Training is the key to
				success of any program. We have introduced trainings which focus on
				implementors skill development in domains like Risk Management,
				Information Security, Privacy, GDPR and Fraud Risk Management.
				Intent of these trainings is to transfer knowledge and reduce
				external dependency.</p>
			<p style="padding-bottom: 25px;">We can conduct in-house and
				external trainings which are generic or customized to the specific
				needs of an Organization. Below are some of the trainings carefully
				designed by our team and can be attended by anyone who has an
				experience in this field or is completely new and wish to learn and
				establish career in this domain.</p>

		</div>
	</div>
	<div class="row">
		<div class="col-sm-8 col-md-offset-2">
			<div class="row">
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
								<div class="the-price"
									style="background: #5e845e; padding: 12px 0;">
									<h3 style="margin: 0; font-size: 14px;">
										Price - <i class="fa fa-rupee"></i> ${pro.unitPrice}
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
									<div class="col-xs-12 col-sm-6">
										<a href="javascript:void(0);"
											class="btn btn-default btn-block"> View </a>
									</div>
									<div class="col-xs-12 col-sm-6">
										<a href="javascript:void(0);"
											class="btn btn-default btn-block"> Add to cart </a>
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
