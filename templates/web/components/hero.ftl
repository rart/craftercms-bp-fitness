<#import "/templates/system/common/crafter.ftl" as crafter />

<#-- Hero -->
<@crafter.section id="home" class="parallax-section">
	<div class="banner">
		<div class="container">
			<div class="row">
				<div class="col-md-offset-1 col-md-10 col-sm-12 wow fadeInUp" data-wow-delay="500ms">
					<@crafter.h3 $field="h3FirstText_t:" />
					<@crafter.h1 $field="h1SecondText_t:" />
          <@crafter.h2 $field="h1ThirdText_t:" renderEmpty=false />
					<@crafter.a $field="buttonText_t:" renderEmpty=false href="${contentModel.buttonSectionLink_s}" class="smoothScroll btn btn-default" />
				</div>
			</div>
		</div>
		<#if contentModel.mediaBanner_o.item??>
			<#assign myItem = siteItemService.getSiteItem(contentModel.mediaBanner_o.item.key) />
			<#if myItem.displayMedia_s == "video">
				<@crafter.div class="header-video">
					<#if myItem.videoBackground_s??>
						<@crafter.video
              $model=myItem
              $field="videoBackground_s"
              playsinline=""
              autoplay=""
              muted=""
              loop=""
              class="header-video__teaser-video"
              id="header-video__teaser-video"
            >
							<source src="${myItem.videoBackground_s}" type="video/mp4">
						</@crafter.video>
					</#if>
				</@crafter.div>
			<#else>
				<#assign imageSource = "" />
				<#if myItem.bannerImages_o.item??>
					<#list myItem.bannerImages_o.item as row>
						<#if (imageSource?length > 0) >
							<#assign imageSource = imageSource + ',' + row.bannerImage_s />
						<#else>
							<#assign imageSource = row.bannerImage_s />
						</#if>
					</#list>
					<input type="hidden" id="mediaBannerImages" data-media-banner-images="${imageSource}"/>
				</#if>
			</#if>
		</#if>
	</div>
</@crafter.section>
