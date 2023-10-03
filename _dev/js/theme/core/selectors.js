import prestashop from 'prestashop';
import DOMReady from "../utils/DOMReady";

prestashop.selectors = {
  quantityWanted: '#quantity_wanted',
  product: {
    imagesModal: '.js-product-images-modal',
    thumb: '.js-thumb',
    thumbContainer: '.js-thumb-container',
    arrows: '.js-arrows',
    selected: '.js-thumb-selected',
    modalProductCover: '.js-modal-product-cover',
    cover: '.js-qv-product-cover',
    customizationModal: '.js-customization-modal',
    imageContainer: '.js-quickview js-images-container, .page-product:not(.js-quickview-open) .js-product-container .images-container',
    container: '.js-product-container',
    availability: '.js-product-availability',
    actions: '.js-product-actions',
    variants: '.js-product-variants',
    refresh: '.js-product-refresh',
    miniature: '.js-product-miniature',
    minimalQuantity: '.js-product-minimal-quantity',
    addToCart: '.js-product-add-to-cart',
    prices: '.js-quickview .js-product-prices, .page-product:not(.js-quickview-open) .js-product-prices',
    inputCustomization: '.js-product-actions .js-product-customization-id',
    // eslint-disable-next-line max-len
    customization: '.js-quickview .js-product-customization, .page-product:not(.js-quickview-open) .js-product-container .js-product-customization',
    variantsUpdate: '.js-quickview .js-product-variants, .page-product:not(.js-quickview-open) .js-product-container .js-product-variants',
    discounts: '.js-quickview .js-product-discounts, .page-product:not(.js-quickview-open) .js-product-container .js-product-discounts',
    // eslint-disable-next-line max-len
    additionalInfos: '.js-quickview .js-product-additional-info, .page-product:not(.js-quickview-open) .js-product-container .js-product-additional-info',
    details: '.js-quickview .js-product-details, .page-product:not(.js-quickview-open) .js-product-container .js-product-details',
    flags: '.js-quickview .js-product-flags, .page-product:not(.js-quickview-open) .js-product-container .js-product-flags',
  },
  listing: {
    searchFilterToggler: '.js-search-toggler',
    searchFiltersWrapper: '#search_filters_wrapper',
    searchFilterControls: '#search_filter_controls',
    searchFilters: '#search_filters',
    activeSearchFilters: '#js-active-search-filters',
    listTop: '#js-product-list-top',
    list: '#js-product-list',
    listBottom: '#js-product-list-bottom',
    listHeader: '#js-product-list-header',
    searchFiltersClearAll: '.js-search-filters-clear-all',
    searchLink: '.js-search-link',
    quickview: '[data-link-action="quickview"]',
  },
  order: {
    returnForm: '.js-order-return-form',
  },
  arrowDown: '..js-arrow-down',
  arrowUp: '.js-arrow-up',
  clear: '.clear',
  fileInput: '.js-file-input',
  contentWrapper: '.js-content-wrapper',
  footer: '.js-footer',
  modalContent: '.js-modal-content',
  modal: '.js-checkout-modal',
  touchspin: '.js-touchspin',
  cart: {
    productLineQty: '.js-cart-line-product-quantity',
    quickview: '.js-quickview',
    promoCode: '#promo-code',
    displayPromo: '.display-promo',
    promoCodeButton: '.promo-code-button',
    discountCode: '.js-discount .js-code',
    discountName: '[name=discount_name]',
    actions: '[data-link-action="delete-from-cart"], [data-link-action="remove-voucher"]',
    detailedTotals: '.js-cart-detailed-totals',
    summaryItemsSubtotal: '.js-cart-summary-items-subtotal',
    summarySubTotalsContainer: '.js-cart-summary-subtotals-container',
    summaryTotals: '.js-cart-summary-totals',
    summaryProducts: '.js-cart-summary-products',
    detailedActions: '.js-cart-detailed-actions',
    voucher: '.js-cart-voucher',
    overview: '.cart-overview',
    summaryTop: '.js-cart-summary-top',
    productCustomizationId: '.js-product-customization-id',
    lineProductQuantity: '.js-cart-line-product-quantity',
  },
  notifications: {
    dangerAlert: '#notifications article.alert-danger',
    container: '#notifications .container',
  },
  passwordPolicy: {
    template: '#password-feedback',
    hint: '.js-hint-password',
    container: '.js-password-strength-feedback',
    strengthText: '.js-password-strength-text',
    requirementScore: '.js-password-requirements-score',
    requirementLength: '.js-password-requirements-length',
    requirementScoreIcon: '.js-password-requirements-score i',
    requirementLengthIcon: '.js-password-requirements-length i',
    progressBar: '.js-password-policy-progress-bar',
    inputColumn: '.js-input-column',
  },
  checkout: {
    btn: '.js-cart-detailed-actions a',
    carrierExtraContent: '.js-carrier-extra-content',
    imagesLink: '.js-show-details',
    giftCheckbox: '.js-gift-checkbox',
    termsLink: '.js-terms a',
    form: '.checkout-step form',
    currentStep: 'js-current-step',
    step: '.js-checkout-step',
    stepTitle: '.js-step-title',
    stepEdit: '.js-step-edit',
    confirmationSelector: '.js-payment-confirmation',
    conditionsSelector: '.js-conditions-to-approve',
    conditionAlertSelector: '.js-alert-payment-conditions',
    additionalInformatonSelector: '.js-additional-information',
    optionsForm: '.js-payment-option-form',
    // eslint-disable-next-line
    termsCheckboxSelector: '.js-conditions-to-approve input[name="conditions_to_approve[terms-and-conditions]"]',
    paymentBinary: '.js-payment-binary',
    deliveryFormSelector: '#js-delivery',
    summarySelector: '#js-checkout-summary',
    deliveryStepSelector: '#checkout-delivery-step',
    editDeliveryButtonSelector: '.js-edit-delivery',
    deliveryOption: '.js-delivery-option',
    cartPaymentStepRefresh: '.js-cart-payment-step-refresh',
    editAddresses: '.js-edit-addresses',
    // eslint-disable-next-line
    deliveryAddressRadios: '.js-address-selector input[type=radio]',
    addressItem: '.js-address-item',
    addressesStep: '#checkout-addresses-step',
    addressItemChecked: '.js-address-item:has(input[type=radio]:checked)',
    addressError: '.js-address-error',
    notValidAddresses: '.js-not-valid-addresses',
    invoiceAddresses: '.js-address-selector',
    addressForm: '.js-address-form',
  },
};

DOMReady(() => {
  prestashop.emit('selectorsInit');
});
