<#import "/templates/system/common/crafter.ftl" as crafter />

<!-- =========================
    CONTACT SECTION
============================== -->

<section id="${contentModel['internal-name']}" class="parallax-section contact-section" style="background: url('${contentModel.bgImage_s!""}') 50%;">
  <div class="container">
    <div class="row">

      <div class="wow fadeInUp col-md-offset-1 col-md-5 col-sm-6" data-wow-delay="0.6s">
        <div class="contact_des">
          <@crafter.div $field="formDescription_html">
            ${contentModel.formDescription_html!''}
          </@crafter.div>
          <#if contentModel.attachment_o?? && contentModel.attachment_o.item??>
            <a href="${contentModel.attachment_o.item.key}" class="btn btn-danger">
              <#if contentModel.attachmentLabel_t?? && contentModel.attachmentLabel_t?trim?has_content>
                <@crafter.span $field="attachmentLabel_t">
                  ${contentModel.attachmentLabel_t}
                </@crafter.span>
              <#else>
                DOWNLOAD
              </#if>
            </a>
          </#if>
        </div>
      </div>

      <div class="wow fadeInUp col-md-5 col-sm-6" data-wow-delay="0.9s">
        <div class="contact_detail">
          <div class="section-title">
            <@crafter.h2 $field="formTitle_t">
              ${contentModel.formTitle_t!''}
            </@crafter.h2>
          </div>
          <form action="/api/1/services/contactUs.json" method="post">
              <#if (contentModel.formFields_o.item)??><#list contentModel.formFields_o.item as field>
                  <#if field.isTextArea_b>
                    <textarea name="${field.name_t}" rows="5" class="form-control" id="${field.name_t}" placeholder="${field.label_t}" required=""></textarea>
                  <#else>
                    <input name="${field.name_t}" class="form-control" id="${field.name_t}" placeholder="${field.label_t}" required="" ${field.label_t?contains("mail")?then('type="email"','type="text" ')}>
                  </#if>
              </#list></#if>
            <div class="col-md-6 col-sm-10">
              <input name="submit" type="submit" class="form-control" id="submit" value="<#if contentModel.submitLabel_t?? && contentModel.submitLabel_t?trim?has_content>${contentModel.submitLabel_t}<#else>SEND</#if>">
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>
