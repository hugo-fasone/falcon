{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
{extends file='customer/page.tpl'}

{block name='page_title'}
  {l s='Merchandise returns' d='Shop.Theme.Customeraccount'}
{/block}

{block name='page_content'}
  <h6>{l s='Here is a list of pending merchandise returns' d='Shop.Theme.Customeraccount'}</h6>

  {if $ordersReturn && count($ordersReturn)}

    <table class="table table-striped table-bordered d-none d-md-block">
      <thead class="thead-default">
        <tr>
          <th>{l s='Order' d='Shop.Theme.Customeraccount'}</th>
          <th>{l s='Return' d='Shop.Theme.Customeraccount'}</th>
          <th>{l s='Package status' d='Shop.Theme.Customeraccount'}</th>
          <th>{l s='Date issued' d='Shop.Theme.Customeraccount'}</th>
          <th>{l s='Returns form' d='Shop.Theme.Customeraccount'}</th>
        </tr>
      </thead>
      <tbody>
        {foreach from=$ordersReturn item=return}
          <tr>
            <td class="align-middle"><a href="{$return.details_url}">{$return.reference}</a></td>
            <td class="align-middle"><a href="{$return.return_url}">{$return.return_number}</a></td>
            <td class="align-middle">{$return.state_name}</td>
            <td class="align-middle">
              <span class="text-nowrap">
                {$return.return_date}
              </span>
            </td>
            <td class="text-sm-center align-middle">
              {if $return.print_url}
                <a href="{$return.print_url}" class="btn btn-primary btn-sm">
                  <span class="material-icons btn-icon ms-1">file_download</span>
                  {l s='Print out' d='Shop.Theme.Actions'}
                </a>
              {else}
                -
              {/if}
            </td>
          </tr>
        {/foreach}
      </tbody>
    </table>
    <div class="order-returns d-md-none">
      {foreach from=$ordersReturn item=return}
        <div class="card">

          <div class="card-header">
            <p class="card-title mb-0 h5">
              {l s='Return' d='Shop.Theme.Customeraccount'}: {$return.return_number}
            </p>
          </div>

          <div class="card-body">
            <ul class="mb-0 row">
              <li class="col-sm-6 mb-2">
                <strong>{l s='Order' d='Shop.Theme.Customeraccount'}:</strong>
                <a href="{$return.details_url}">{$return.reference}</a>
              </li>
              <li class="col-sm-6 mb-2">
                <strong>{l s='Package status' d='Shop.Theme.Customeraccount'}:</strong>
                {$return.state_name}
              </li>
              <li class="col-sm-6 mb-2">
                <strong>{l s='Date issued' d='Shop.Theme.Customeraccount'}:</strong>
                {$return.return_date}
              </li>
            </ul>
          </div>

          <div class="card-footer">
            <div class="row mt-n2">
              <div class="col-sm-6 mt-2">
                <a class="btn btn-primary d-block  text-center w-100 btn-sm" href="{$return.return_url}">
                  {l s='Details' d='Shop.Theme.Customeraccount'}
                </a>
              </div>
              {if $return.print_url}
                <div class="col-sm-6 mt-2">
                  <a class="btn btn-light d-block  text-center w-100 btn-sm" href="{$return.print_url}">
                  {l s='Print out' d='Shop.Theme.Actions'}
                  </a>
                </div>
              {/if}
            </div>
          </div>

        </div>
      {/foreach}
    </div>

  {else}
    <div class="alert alert-info" role="alert" data-alert="info">{l s='You have no merchandise return authorizations.' d='Shop.Notifications.Error'}</div>
  {/if}

{/block}
