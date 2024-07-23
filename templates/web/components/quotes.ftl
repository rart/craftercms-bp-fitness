<#import "/templates/system/common/crafter.ftl" as crafter />

<@crafter.section id="testimonial" class="quotes-section parallax-section prices-background" style="background: url('${contentModel.imageBackground_s}') 50% 0 repeat-y fixed">
	<div class="container">
		<div class="row">

			<#if contentModel.displayTitleDescription_b>
				<div class="col-md-12 col-sm-12 text-center">
					<@crafter.h2 $field="titleText_t:" style="color:${contentModel.titleColor_s}"/>
					<@crafter.p $field="description_t:"/>
				</div>
			</#if>

			<!-- Testimonial Owl Carousel section
			================================================== -->

			<div id="owl-testimonial" class="owl-carousel components-container col-md-12 col-sm-12" model-id="${contentModel.objectId}">
				<#list contentModel.quotes_o.item as item>
					<#if item.component??>
						<#assign myContentItem = item.component />
					<#else>
						<#assign myContentItem =  siteItemService.getSiteItem(item.key) />
					</#if>
					<div class="item col-md-offset-2 col-md-8 col-sm-offset-1 col-sm-10 wow fadeInUp" data-wow-delay="0.6s">
						<#if contentModel.quoteStyle_s == "quote">
							<i class="fa fa-quote-left"></i>
						</#if>
						<@crafter.h3 $model=myContentItem $field="description_t:"/>
						<h4>
							<@crafter.span $model=myContentItem $field="authorFullName_t:"/>
							(<@crafter.span $model=myContentItem $field="authorProfession_t:"/>)
						</h4>
					</div>
				</#list>
			</div>
		</div>
	</div>
</@crafter.section>
