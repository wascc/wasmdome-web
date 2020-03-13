/**
 * --------------------------------------------------------------------------
 * CoreUI Pro Boostrap Admin Template (3.0.0): draggable-cards.js
 * Licensed under MIT (https://coreui.io/license)
 * --------------------------------------------------------------------------
 */

/* eslint-disable no-magic-numbers */
const element = '[class*=col]';
const handle = '.card-header';
const connect = '[class*=col]';
$(element).sortable({
  handle,
  connectWith: connect,
  tolerance: 'pointer',
  forcePlaceholderSize: true,
  opacity: 0.8,
  placeholder: 'card-placeholder'
}).disableSelection();
//# sourceMappingURL=draggable-cards.js.map