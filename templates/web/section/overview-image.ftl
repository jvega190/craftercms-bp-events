<#import "/templates/system/common/crafter.ftl" as crafter />
<!-- =========================
    OVERVIEW SECTION
============================== -->
<#macro drawImage>
	<div class="wow fadeInUp col-md-6 col-sm-6" data-wow-delay="0.9s">
    <@crafter.img $field="image_s" src=(contentModel.image_s) class="img-responsive" alt="Overview" />
	</div>
</#macro>

<section id="${contentModel['internal-name']}" class="parallax-section image-section">
  <div class="container">
    <div class="row">

      <#if "left" == contentModel.imagePosition_s><@drawImage/></#if>
      <div class="wow fadeInUp col-md-6 col-sm-6" data-wow-delay="0.6s">
        <@crafter.h3 $field="imageTitle_t">
          ${contentModel.imageTitle_t!''}
        </@crafter.h3>
        <@crafter.div $field="imageDescription_html">
          ${contentModel.imageDescription_html!''}
        </@crafter.div>
      </div>
      <#if "right" == contentModel.imagePosition_s><@drawImage/></#if>

    </div>
  </div>
</section>
