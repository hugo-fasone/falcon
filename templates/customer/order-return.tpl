{extends file='customer/page.tpl'}

{block name='page_title'}
  <h1 class="h1">{l s='Return details' d='Shop.Theme.Customeraccount'}</h1>
{/block}

{block name='page_content'}
  {block name='order_return_infos'}
    <div id="order-return-infos" class="mb-4">
      <div class="mb-4">
        <p class="mb-1">
          <strong>{l
            s='%number% on %date%'
            d='Shop.Theme.Customeraccount'
            sprintf=['%number%' => $return.return_number, '%date%' => $return.return_date]}
          </strong>
        </p>
        <p class="mb-1">{l s='We have logged your return request.' d='Shop.Theme.Customeraccount'}</p>
        <p class="mb-1">{l
          s='Your package must be returned to us within %number% days of receiving your order.'
          d='Shop.Theme.Customeraccount'
          sprintf=['%number%' => $configuration.number_of_days_for_return]}</p>
        <p class="mb-1">
          {* [1][/1] is for a HTML tag. *}
          {l
            s='The current status of your merchandise return is: [1] %status% [/1]'
            d='Shop.Theme.Customeraccount'
            sprintf=[
              '[1]' => '<strong>',
              '[/1]' => '</strong>',
              '%status%' => $return.state_name
            ]
          }
        </p>
      </div>

      <p class="h5 mb-2">
        {l s='List of items to be returned:' d='Shop.Theme.Customeraccount'}
      </p>

      <table class="table table-striped table-bordered">
        <thead class="thead-default">
          <tr>
            <th>{l s='Product' d='Shop.Theme.Catalog'}</th>
            <th>{l s='Quantity' d='Shop.Theme.Checkout'}</th>
          </tr>
        </thead>
        <tbody>
        {foreach from=$products item=product}
          <tr>
            <td>
              <strong>{$product.product_name}</strong>
              {if $product.product_reference}
                <br />
                {l s='Reference' d='Shop.Theme.Catalog'}: {$product.product_reference}
              {/if}
              {if $product.customizations}
                {foreach from=$product.customizations item="customization"}
                  <div class="customization">
                    <a href="#" data-bs-toggle="modal" data-bs-target="#product-customizations-modal-{$customization.id_customization}">{l s='Product customization' d='Shop.Theme.Catalog'}</a>
                  </div>
                  <div class="modal fade customization-modal" id="product-customizations-modal-{$customization.id_customization}" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="btn-close" data-dismiss="modal" aria-label="{l s='Close' d='Shop.Theme.Global'}">
                            <span aria-hidden="true">&times;</span>
                          </button>
                          <h4 class="modal-title">{l s='Product customization' d='Shop.Theme.Catalog'}</h4>
                        </div>
                        <div class="modal-body">
                          {foreach from=$customization.fields item="field"}
                            <div class="product-customization-line row">
                              <div class="col-sm-3 col-4 label">
                                {$field.label}
                              </div>
                              <div class="col-sm-9 col-8 value">
                                {if $field.type == 'text'}
                                  {if (int)$field.id_module}
                                    {$field.text nofilter}
                                  {else}
                                    {$field.text}
                                  {/if}
                                {elseif $field.type == 'image'}
                                  <img src="{$field.image.small.url}" loading="lazy">
                                {/if}
                              </div>
                            </div>
                          {/foreach}
                        </div>
                      </div>
                    </div>
                  </div>
                {/foreach}
              {/if}
            </td>
            <td>
              {$product.product_quantity}
            </td>
          </tr>
        {/foreach}
        </tbody>
      </table>

    </div>
  {/block}

  {if $return.state == 2}
    <section class="card">
      <div class="card-title">
        <h3 class="card-title h5 mb-0">{l s='Reminder' d='Shop.Theme.Customeraccount'}</h3>
      </div>
      <div class="card-body">
        <p class="card-text">
          {l
            s='All merchandise must be returned in its original packaging and in its original state.'
            d='Shop.Theme.Customeraccount'
          }<br>
          {* [1][/1] is for a HTML tag. *}
          {l
            s='Please print out the [1]returns form[/1] and include it with your package.'
            d='Shop.Theme.Customeraccount'
            sprintf=[
              '[1]' => '<a href="'|cat:$return.print_url|cat:'">',
              '[/1]' => '</a>'
            ]
          }
          <br>
          {* [1][/1] is for a HTML tag. *}
          {l
            s='Please check the [1]returns form[/1] for the correct address.'
            d='Shop.Theme.Customeraccount'
            sprintf=[
              '[1]' => '<a href="'|cat:$return.print_url|cat:'">',
              '[/1]' => '</a>'
            ]
          }
        </p>
        <p class="card-text">
          {l
            s='When we receive your package, we will notify you by email. We will then begin processing order reimbursement.'
            d='Shop.Theme.Customeraccount'
          }<br>
          <a href="{$urls.pages.contact}">
            {l
              s='Please let us know if you have any questions.'
              d='Shop.Theme.Customeraccount'
            }
          </a><br>
          {l
            s='If the conditions of return listed above are not respected, we reserve the right to refuse your package and/or reimbursement.'
            d='Shop.Theme.Customeraccount'
          }
        </p>
      </div>
    </section>
  {/if}
{/block}
