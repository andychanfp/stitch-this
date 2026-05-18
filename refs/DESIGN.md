---
version: alpha
name: Bento
description: A direct conversion of Bento’s foodpanda design language — a compact marketplace UI system built on white and soft-grey product surfaces, dense commerce components, and signature foodpanda magenta for primary CTAs, deal emphasis, selected states, and high-attention interactions. The system reads as energetic but functional like rounded cards and tiles, compact PP Agrandir and SF Pro typography, controlled 8px-based spacing, and semantic palettes for deals, Pro subscriptions, ratings, dietary tags, and system feedback.

colors:
  brand:
    brand-dark: #c21760
    brand-highlight: #ffdddd
    brand-primary: #ff2b85
    brand-secondary: #6b7680
    gradient-dark: #ffdddd
    gradient-light: #ffffff
  interaction:
    interaction-background-hover: #ffebeb
    interaction-focus: #ff2b85
    interaction-focus-reversed: #ffebeb
    interaction-primary: #e21b70
    interaction-primary-feedback: #ffebeb
    interaction-primary-hover: #c21760
    interaction-reversed-white-opacity15: #fffffff26
    interaction-reversed-white-opacity30: #ffffff4D
    interaction-reversed-white-opacity50: #ffffff80
    interaction-secondary: #2e3138
    interaction-secondary-border: #d3d5d7
    interaction-secondary-feedback: #f7f8f8
    interaction-secondary-highlight: #f7f8f8
    interaction-secondary-hover: #090c0f
    interaction-secondary-inactive: #6b7175
    interaction-secondary-selected: #2e3138
    interaction-tertiary: #f77c99
    on-interaction-primary: #ffffff
    on-interaction-primary-hover: #ffffff
    on-interaction-secondary: #2e3138
    on-interaction-secondary-hover: #090c0f
  neutral:
    neutral-border: #2e3138
    neutral-divider: #e8e9ea
    neutral-inactive: #b7babc
    neutral-primary: #2e3138
    neutral-secondary: #6b7175
    neutral-surface: #f7f8f8
    transparent: #ffffff00
    white: #ffffff
  system:
    error: #bb2800
    error-highlight: #ffe3db
    information: #25537c
    information-highlight: #dfedf7
    success: #3c8264
    success-gradient-bottom: #f0f5f300
    success-gradient-top: #f0f5f3
    success-highlight: #cbe7db
    warning: #fcc54c  
    warning-highlight: #feefcd
  joker:
    genericBG: #ffdddd
    mainText: #c21760
    timerBG: #c21760
    exp2GenericBG: #ffebeb
  rating:
    popular-icon: #090c0f
    ratings-rating: #ffb413
    ratings-rating-background: #ffc4cc
    ratings-rating-feedback-active: #e21b70
    ratings-rating-feedback-background: #ffebeb
    ratings-rating-outline: #e03000
  deal:
    deal-banner-text: #c21760
    deal-highlight-lvl1: #ffebeb
    deal-highlight-lvl2: #ffdddd
    deal-primary: #c21760
    deal-secondary: #f77c99
    deal-tertiary: #ffc4cc
    deal-text-on-white: #e21b70
    price-emphasis: #090c0f
  tag:
    popular-highlight: #ffedc6
    popular-tag-icon: #090c0f
    popular-tag-text: #090c0f
    rating-light-tag-icon: #ffffff
    rating-light-tag-text: #ffffff
    tag-deal-background: #e21b70
    tag-deal-text: #ffffff
    tag-dietary-kids: #c21760  
    tag-dietary-kids-background: #ffebeb
    tag-dietary-spicy: #bb2800
    tag-dietary-spicy-background: #fdefeb
    tag-dietary-vegan: #357258
    tag-dietary-vegan-background: #f0f5f3
    tag-dietary-vegetarian: #357258
    tag-dietary-vegetarian-background: #f0f5f3
    tag-primary-background: #e21b70
    tag-primary-text: #ffffff
    tag-secondary-background: #ffdddd
    tag-secondary-text: #c21760
    tag-sponsored-background: 
    tag-success-text: #ffffff
  overlay:
    dark-4: #090c0f0a
    dark-64: #090c0fa3
    dark-80: #090c0fd6
    light-56: #ffffff8f
    light-80: #ffffffcc
  layout:
    alt-screen-surface: #ffffff
    surface-gradient-bottom: #ffebeb
    surface-gradient-top: #ffebebff
  item-modifier:
    item-modifier-required-background: #ffebeb
    item-modifier-required-hover: #ffdddd
    item-modifier-required-popular: #ffc4cc
  pro:
    on-pro-higlight: #452c63
    pro-deal-highlight-1: #fcf3fe
    pro-deal-highlight-2: #efddf5
    pro-deal-highlight-3: #c69adf
    pro-deal-highlight-4: #5c1d94
    pro-gradient-end: #5c1d94
    pro-gradient-start: #6e3dab
    pro-primary: #452c63

typography:
  title-display: 
    fontFamily: "'PP Agrandir', 'Bricolage Grotesque', 'Chivo', 'Work Sans', 'Basic Sans', 'Segoe UI', -apple-system, system-ui, sans-serif"
    fontSize: 24px
    fontWeight: 800
    lineHeight: 28px
    letterSpacing: 0px
  title-large: 
    fontFamily: "'PP Agrandir', 'Bricolage Grotesque', 'Chivo', 'Work Sans', 'Basic Sans', 'Segoe UI', -apple-system, system-ui, sans-serif"
    fontSize: 18px
    fontWeight: 600
    lineHeight: 21px
    letterSpacing: 0px
  title-medium-strong: 
    fontFamily: "'PP Agrandir', 'Bricolage Grotesque', 'Chivo', 'Work Sans', 'Basic Sans', 'Segoe UI', -apple-system, system-ui, sans-serif"
    fontSize: 18px
    fontWeight: 800
    lineHeight: 21px
    letterSpacing: 0px
  title-small: 
    fontFamily: "'PP Agrandir', 'Bricolage Grotesque', 'Chivo', 'Work Sans', 'Basic Sans', 'Segoe UI', -apple-system, system-ui, sans-serif"
    fontSize: 16px
    fontWeight: 700
    lineHeight: 19px
    letterSpacing: 0px
  highlight-base: 
    fontFamily: "'SF Pro', 'SF Pro Text', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, system-ui, sans-serif"
    fontSize: 14px
    fontWeight: 700
    lineHeight: 16px
    letterSpacing: 0px
  highlight-base-underlined: 
    fontFamily: "'SF Pro', 'SF Pro Text', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, system-ui, sans-serif"
    fontSize: 14px
    fontWeight: 700
    lineHeight: 16px
    letterSpacing: 0px
    decoration: underline
  highlight-small: 
    fontFamily: "'SF Pro', 'SF Pro Text', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, system-ui, sans-serif"
    fontSize: 12px
    fontWeight: 700
    lineHeight: 14px
    letterSpacing: 0px
  highlight-small-underlined: 
    fontFamily: "'SF Pro', 'SF Pro Text', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, system-ui, sans-serif"
    fontSize: 12px
    fontWeight: 700
    lineHeight: 14px
    letterSpacing: 0px
    decoration: underline
  highlight-xsmall: 
    fontFamily: "'SF Pro', 'SF Pro Text', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, system-ui, sans-serif"
    fontSize: 10px
    fontWeight: 700
    lineHeight: 11px
    letterSpacing: 0px
  highlight-xsmall-underlined: 
    fontFamily: "'SF Pro', 'SF Pro Text', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, system-ui, sans-serif"
    fontSize: 10px
    fontWeight: 700
    lineHeight: 11px
    letterSpacing: 0px
    decoration: underline
  body-base: 
    fontFamily: "'SF Pro', 'SF Pro Text', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, system-ui, sans-serif"
    fontSize: 14px
    fontWeight: 400
    lineHeight: 16px
    letterSpacing: 0px
  body-small: 
    fontFamily: "'SF Pro', 'SF Pro Text', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, system-ui, sans-serif"
    fontSize: 12px
    fontWeight: 400
    lineHeight: 14px
    letterSpacing: 0px
  body-small-underlined: 
    fontFamily: "'SF Pro', 'SF Pro Text', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, system-ui, sans-serif"
    fontSize: 12px
    fontWeight: 400
    lineHeight: 14px
    letterSpacing: 0px
    decoration: underline
  body-xsmall: 
    fontFamily: "'SF Pro', 'SF Pro Text', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, system-ui, sans-serif"
    fontSize: 10px
    fontWeight: 400
    lineHeight: 11px
    letterSpacing: 0px
  body-xsmall-underlined: 
    fontFamily: "'SF Pro', 'SF Pro Text', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, system-ui, sans-serif"
    fontSize: 10px
    fontWeight: 400
    lineHeight: 11px
    letterSpacing: 0px
    decoration: underline

rounded:
  base: 8px
  base-pressed: 8px
  mini: 4px
  overlay: 16px
  media: 8px
  container: 12px
  container-pressed: 16px
  container-edge: 8px
  pill: 9999px
  circle: 9999px
  button: 8px
  button-pressed: 12px
  field: 8px
  switch: 8px

spacing:
  xxxs: 2px
  xxs: 4px
  xs: 8px
  st: 12px
  sm: 16px
  md: 24px
  lg: 32px
  xl: 48px
  xxl: 64px
  xxxl: 80px

strokes:
  stroke-static: 0.5
  stroke-interactive-subtle: 0.5
  stroke-interactive: 1
  stroke-divider: 1
  stroke-elevated: 1
  stroke-input: 1
  stroke-interactive-hover: 1.5
  stroke-input-focus: 1.5
  stroke-icon: 1.5
  stroke-interactive-focus: 2
  stroke-navigation: 4

components:
  accordion:
    backgroundColor: "{colors.neutral.white}"
    textColor: "{colors.neutral.primary}"
    iconColor: "{colors.neutral.primary}"
    typography: "{typography.title-small}"
    bodyTypography: "{typography.body-base}"
    rounded: "{rounded.container}"
    padding: "{spacing.sm}"
    variants:
      default:
        backgroundColor: "{colors.neutral.white}"
        textColor: "{colors.neutral.primary}"
      pro-primary:
        backgroundColor: "{colors.pro.pro-deal-highlight-4}"
        textColor: "{colors.neutral.white}"
      pro-subtle:
        backgroundColor: "{colors.pro.pro-deal-highlight-1}"
        textColor: "{colors.neutral.primary}"
      subtle:
        backgroundColor: "{colors.neutral.surface}"
        textColor: "{colors.neutral.primary}"
  button-primary:
    backgroundColor: "{colors.interaction.primary}"
    textColor: "{colors.neutral.white}"
    typography: "{typography.highlight-base}"
    rounded: "{rounded.button}"
    padding: "{spacing.xs} {spacing.sm}"
  button-primary-reversed:
    backgroundColor: "{colors.neutral.white}"
    textColor: "{colors.interaction.primary}"
    borderColor: "{colors.interaction.secondary-border}"
    typography: "{typography.highlight-base}"
    rounded: "{rounded.button}"
    padding: "{spacing.xs} {spacing.sm}"
  button-secondary:
    backgroundColor: "{colors.neutral.white}"
    textColor: "{colors.interaction.on-interaction-secondary}"
    borderColor: "{colors.interaction.secondary}"
    typography: "{typography.highlight-base}"
    rounded: "{rounded.button}"
    padding: "{spacing.xs} {spacing.sm}"
  button-secondary-reversed:
    backgroundColor: "{colors.interaction.secondary-hover}"
    textColor: "{colors.neutral.white}"
    borderColor: "{colors.neutral.white}"
    typography: "{typography.highlight-base}"
    rounded: "{rounded.button}"
    padding: "{spacing.xs} {spacing.sm}"
  button-text:
    backgroundColor: "{colors.neutral.transparent}"
    textColor: "{colors.interaction.on-interaction-secondary}"
    typography: "{typography.highlight-base}"
    rounded: "{rounded.button}"
    padding: "0px"
  button-circular:
    backgroundColor: "{colors.neutral.white}"
    textColor: "{colors.neutral.primary}"
    iconColor: "{colors.neutral.primary}"
    borderColor: "{colors.interaction.secondary-border}"
    stroke: "{strokes.stroke-icon}"
    typography: "{typography.body-small}"
    rounded: "{rounded.circle}"
    padding: "{spacing.xs}"
    variants:
      no-container:
        backgroundColor: "{colors.neutral.transparent}"
        borderColor: "{colors.neutral.transparent}"
      contained:
        backgroundColor: "{colors.neutral.white}"
        borderColor: "{colors.interaction.secondary-border}"
      elevated:
        elevation: "Low"
  bottom-navigation:
    backgroundColor: "{colors.neutral.white}"
    textColor: "{colors.neutral.secondary}"
    iconColor: "{colors.neutral.secondary}"
    dividerColor: "{colors.neutral.divider}"
    selectedColor: "{colors.neutral.primary}"
    typography: "{typography.highlight-small}"
    rounded: "{rounded.pill}"
    padding: "{spacing.xs} {spacing.sm}"
  bottom-sheet:
    backgroundColor: "{colors.neutral.white}"
    textColor: "{colors.neutral.primary}"
    dividerColor: "{colors.neutral.divider}"
    typography: "{typography.body-base}"
    rounded: "{rounded.overlay}"
    padding: "{spacing.sm}"
    variants:
      default:
        backgroundColor: "{colors.neutral.white}"
        handleColor: "{colors.neutral.divider}"
      pro-reversed:
        backgroundGradient: "{colors.pro.pro-gradient-start} -> {colors.pro.pro-gradient-end}"
        textColor: "{colors.neutral.white}"
        handleColor: "{colors.neutral.white}"
        dividerColor: "{colors.interaction.reversed-white-opacity30}"
  banner-information:
    backgroundColor: "{colors.system.information-highlight}"
    textColor: "{colors.neutral.primary}"
    linkColor: "{colors.neutral.primary}"
    typography: "{typography.body-small}"
    linkTypography: "{typography.body-small-underlined}"
    rounded: "{rounded.container}"
    padding: "{spacing.xs} {spacing.st}"
  banner-deal:
    backgroundColor: "{colors.deal.deal-highlight-lvl1}"
    textColor: "{colors.neutral.primary}"
    linkColor: "{colors.neutral.primary}"
    accentColor: "{colors.deal.deal-banner-text}"
    typography: "{typography.body-small}"
    linkTypography: "{typography.body-small-underlined}"
    rounded: "{rounded.container}"
    padding: "{spacing.xs} {spacing.st}"
  card:
    backgroundColor: "{colors.neutral.white}"
    textColor: "{colors.neutral.primary}"
    secondaryTextColor: "{colors.neutral.secondary}"
    borderColor: "{colors.interaction.secondary-border}"
    dividerColor: "{colors.neutral.divider}"
    stroke: "{strokes.stroke-interactive}"
    typography: "{typography.title-small}"
    bodyTypography: "{typography.body-small}"
    rounded: "{rounded.container}"
    padding: "{spacing.sm}"
  carousel:
    backgroundColor: "{colors.neutral.transparent}"
    textColor: "{colors.neutral.primary}"
    secondaryTextColor: "{colors.neutral.secondary}"
    typography: "{typography.title-small}"
    bodyTypography: "{typography.body-small}"
    rounded: "{rounded.container}"
    padding: "{spacing.sm}"
    variants:
      contained:
        backgroundColor: "{colors.neutral.white}"
      highlighted-header:
        backgroundGradient: "{colors.layout.surface-gradient-top} -> {colors.layout.surface-gradient-bottom}"
      media-header:
        rounded: "{rounded.media}"
  checkbox:
    backgroundColor: "{colors.neutral.white}"
    textColor: "{colors.neutral.primary}"
    borderColor: "{colors.interaction.secondary-border}"
    selectedColor: "{colors.interaction.secondary-selected}"
    checkmarkColor: "{colors.neutral.white}"
    disabledColor: "{colors.neutral.inactive}"
    stroke: "{strokes.stroke-input}"
    typography: "{typography.highlight-base}"
    rounded: "{rounded.mini}"
    padding: "0px"
  card-description:
    backgroundColor: "{colors.neutral.white}"
    textColor: "{colors.neutral.primary}"
    borderColor: "{colors.interaction.secondary-border}"
    stroke: "{strokes.stroke-interactive}"
    typography: "{typography.title-small}"
    rounded: "{rounded.container}"
    padding: "{spacing.sm}"
    variants:
      default:
        backgroundColor: "{colors.neutral.white}"
        textColor: "{colors.neutral.primary}"
      pro:
        backgroundColor: "{colors.pro.pro-deal-highlight-4}"
        textColor: "{colors.neutral.white}"
  category-tile:
    backgroundColor: "{colors.neutral.white}"
    textColor: "{colors.neutral.primary}"
    borderColor: "{colors.neutral.border}"
    selectedBorderColor: "{colors.neutral.border}"
    stroke: "{strokes.stroke-interactive}"
    typography: "{typography.highlight-small}"
    rounded: "{rounded.container}"
    padding: "{spacing.xs}"
    variants:
      none:
        backgroundColor: "{colors.neutral.transparent}"
        borderColor: "{colors.neutral.transparent}"
      subtle:
        backgroundColor: "{colors.neutral.surface}"
      contained:
        backgroundColor: "{colors.neutral.white}"
      deal:
        backgroundColor: "{colors.interaction.primary-feedback}"
        selectedBorderColor: "{colors.interaction.primary}"
  choice-card:
    backgroundColor: "{colors.neutral.white}"
    textColor: "{colors.neutral.primary}"
    borderColor: "{colors.interaction.secondary-border}"
    stroke: "{strokes.stroke-interactive}"
    typography: "{typography.body-base}"
    rounded: "{rounded.container}"
    padding: "{spacing.st}"
    states:
      active:
        backgroundColor: "{colors.interaction.secondary-highlight}"
        borderColor: "{colors.interaction.focus}"
        stroke: "{strokes.stroke-interactive-focus}"
      pressed:
        backgroundColor: "{colors.interaction.secondary-feedback}"
      disabled:
        backgroundColor: "{colors.neutral.surface}"
        borderColor: "{colors.neutral.surface}"
  divider:
    backgroundColor: "{colors.neutral.divider}"
    reversedColor: "{colors.interaction.reversed-white-opacity30}"
    stroke: "{strokes.stroke-divider}"
    rounded: "{rounded.base}"
    padding: "0px"
    variants:
      thin:
        stroke: "{strokes.stroke-static}"
      dashed:
        stroke: "{strokes.stroke-divider}"
      thick:
        stroke: "{strokes.stroke-navigation}"
  header:
    backgroundColor: "{colors.neutral.white}"
    textColor: "{colors.neutral.primary}"
    secondaryTextColor: "{colors.neutral.secondary}"
    iconColor: "{colors.neutral.primary}"
    dividerColor: "{colors.neutral.divider}"
    typography: "{typography.title-small}"
    bodyTypography: "{typography.body-small}"
    rounded: "{rounded.base}"
    padding: "{spacing.xs} {spacing.sm}"
    variants:
      default:
        backgroundColor: "{colors.neutral.white}"
        textColor: "{colors.neutral.primary}"
      reversed-primary:
        backgroundColor: "{colors.interaction.primary}"
        textColor: "{colors.neutral.white}"
        iconColor: "{colors.neutral.white}"
  input-field:
    backgroundColor: "{colors.neutral.white}"
    textColor: "{colors.neutral.primary}"
    placeholderColor: "{colors.neutral.secondary}"
    labelColor: "{colors.neutral.primary}"
    borderColor: "{colors.interaction.secondary-border}"
    stroke: "{strokes.stroke-input}"
    typography: "{typography.body-base}"
    labelTypography: "{typography.body-xsmall}"
    helperTypography: "{typography.body-xsmall}"
    rounded: "{rounded.field}"
    padding: "{spacing.xs} {spacing.st}"
    states:
      disabled:
        backgroundColor: "{colors.neutral.surface}"
        textColor: "{colors.neutral.inactive}"
        borderColor: "{colors.neutral.surface}"
      error:
        borderColor: "{colors.system.error}"
        helperColor: "{colors.system.error}"
        stroke: "{strokes.stroke-input-focus}"
      success:
        borderColor: "{colors.system.success}"
        helperColor: "{colors.system.success}"
        stroke: "{strokes.stroke-input-focus}"
  link:
    backgroundColor: "{colors.neutral.transparent}"
    textColor: "{colors.interaction.on-interaction-secondary}"
    typography: "{typography.highlight-base-underlined}"
    rounded: "{rounded.base}"
    padding: "0px"
    variants:
      reversed:
        textColor: "{colors.neutral.white}"
      small:
        typography: "{typography.highlight-small-underlined}"
  list:
    backgroundColor: "{colors.neutral.white}"
    textColor: "{colors.neutral.primary}"
    secondaryTextColor: "{colors.neutral.primary}"
    iconColor: "{colors.neutral.primary}"
    borderColor: "{colors.interaction.secondary-border}"
    stroke: "{strokes.stroke-interactive}"
    typography: "{typography.title-small}"
    bodyTypography: "{typography.body-base}"
    rounded: "{rounded.container}"
    padding: "{spacing.sm}"
  message-information:
    backgroundColor: "{colors.system.information-highlight}"
    textColor: "{colors.neutral.primary}"
    iconColor: "{colors.system.information}"
    typography: "{typography.title-small}"
    bodyTypography: "{typography.body-base}"
    rounded: "{rounded.container}"
    padding: "{spacing.sm}"
  message-warning:
    backgroundColor: "{colors.system.warning-highlight}"
    textColor: "{colors.neutral.primary}"
    iconColor: "{colors.neutral.primary}"
    typography: "{typography.title-small}"
    bodyTypography: "{typography.body-base}"
    rounded: "{rounded.container}"
    padding: "{spacing.sm}"
  message-error:
    backgroundColor: "{colors.system.error-highlight}"
    textColor: "{colors.neutral.primary}"
    iconColor: "{colors.system.error}"
    typography: "{typography.title-small}"
    bodyTypography: "{typography.body-base}"
    rounded: "{rounded.container}"
    padding: "{spacing.sm}"
  message-success:
    backgroundColor: "{colors.system.success-highlight}"
    textColor: "{colors.neutral.primary}"
    iconColor: "{colors.system.success}"
    typography: "{typography.title-small}"
    bodyTypography: "{typography.body-base}"
    rounded: "{rounded.container}"
    padding: "{spacing.sm}"
  modal:
    backgroundColor: "{colors.neutral.white}"
    overlayColor: "{colors.overlay.dark-80}"
    textColor: "{colors.neutral.primary}"
    secondaryTextColor: "{colors.neutral.secondary}"
    iconColor: "{colors.neutral.primary}"
    typography: "{typography.title-display}"
    bodyTypography: "{typography.body-base}"
    rounded: "{rounded.overlay}"
    padding: "{spacing.md}"
    elevation: "High"
  navigation-bar:
    backgroundColor: "{colors.neutral.white}"
    textColor: "{colors.neutral.primary}"
    secondaryTextColor: "{colors.neutral.secondary}"
    iconColor: "{colors.neutral.primary}"
    dividerColor: "{colors.neutral.divider}"
    typography: "{typography.highlight-small}"
    bodyTypography: "{typography.body-xsmall}"
    rounded: "{rounded.base}"
    padding: "{spacing.xs} {spacing.sm}"
  pill-default:
    backgroundColor: "{colors.neutral.white}"
    textColor: "{colors.neutral.primary}"
    iconColor: "{colors.neutral.primary}"
    borderColor: "{colors.interaction.secondary-border}"
    stroke: "{strokes.stroke-interactive}"
    typography: "{typography.highlight-base}"
    rounded: "{rounded.pill}"
    padding: "{spacing.xs} {spacing.sm}"
    states:
      selected:
        backgroundColor: "{colors.interaction.secondary-selected}"
        textColor: "{colors.neutral.white}"
      disabled:
        backgroundColor: "{colors.neutral.inactive}"
        textColor: "{colors.neutral.white}"
  pill-small:
    backgroundColor: "{colors.neutral.white}"
    textColor: "{colors.neutral.primary}"
    iconColor: "{colors.neutral.primary}"
    borderColor: "{colors.interaction.secondary-border}"
    stroke: "{strokes.stroke-interactive}"
    typography: "{typography.highlight-small}"
    rounded: "{rounded.pill}"
    padding: "{spacing.xxs} {spacing.st}"
  pill-row:
    backgroundColor: "{colors.neutral.transparent}"
    textColor: "{colors.neutral.primary}"
    typography: "{typography.title-small}"
    rounded: "{rounded.base}"
    padding: "0px"
    childComponent: "pill-default"
    gap: "{spacing.xs}"
  pill-icon:
    backgroundColor: "{colors.neutral.white}"
    iconColor: "{colors.neutral.primary}"
    borderColor: "{colors.interaction.secondary-border}"
    stroke: "{strokes.stroke-interactive}"
    rounded: "{rounded.pill}"
    padding: "{spacing.xs}"
    states:
      selected:
        backgroundColor: "{colors.interaction.secondary-selected}"
        iconColor: "{colors.neutral.white}"
      badge:
        backgroundColor: "{colors.interaction.primary}"
        textColor: "{colors.neutral.white}"
        typography: "{typography.highlight-xsmall}"
        rounded: "{rounded.circle}"
  price:
    backgroundColor: "{colors.neutral.transparent}"
    textColor: "{colors.neutral.primary}"
    secondaryTextColor: "{colors.neutral.secondary}"
    typography: "{typography.highlight-base}"
    rounded: "{rounded.base}"
    padding: "0px"
    variants:
      emphasized:
        textColor: "{colors.deal.price-emphasis}"
        typography: "{typography.title-small}"
      discounted:
        textColor: "{colors.interaction.primary}"
        typography: "{typography.title-small}"
      pro:
        textColor: "{colors.pro.pro-deal-highlight-4}"
      delivery-fee:
        textColor: "{colors.neutral.secondary}"
        discountColor: "{colors.interaction.primary}"
      unit-price:
        typography: "{typography.highlight-small}"
      sold-out:
        badgeBackgroundColor: "{colors.system.information-highlight}"
        badgeTextColor: "{colors.system.information}"
        rounded: "{rounded.pill}"
  product-tile:
    backgroundColor: "{colors.neutral.transparent}"
    textColor: "{colors.neutral.primary}"
    secondaryTextColor: "{colors.neutral.secondary}"
    mediaBackgroundColor: "{colors.neutral.surface}"
    iconColor: "{colors.neutral.primary}"
    borderColor: "{colors.interaction.secondary-border}"
    typography: "{typography.highlight-base}"
    bodyTypography: "{typography.body-small}"
    rounded: "{rounded.media}"
    padding: "0px"
  product-list:
    backgroundColor: "{colors.neutral.white}"
    textColor: "{colors.neutral.primary}"
    secondaryTextColor: "{colors.neutral.primary}"
    mediaBackgroundColor: "{colors.neutral.surface}"
    iconColor: "{colors.neutral.primary}"
    borderColor: "{colors.interaction.secondary-border}"
    dividerColor: "{colors.neutral.divider}"
    typography: "{typography.title-small}"
    bodyTypography: "{typography.body-base}"
    rounded: "{rounded.container}"
    padding: "{spacing.sm}"
  progress-stepper:
    backgroundColor: "{colors.neutral.transparent}"
    textColor: "{colors.neutral.secondary}"
    activeColor: "{colors.neutral.primary}"
    activeTextColor: "{colors.neutral.white}"
    trackColor: "{colors.neutral.divider}"
    borderColor: "{colors.interaction.secondary-border}"
    stroke: "{strokes.stroke-navigation}"
    typography: "{typography.highlight-base}"
    labelTypography: "{typography.title-small}"
    rounded: "{rounded.circle}"
    padding: "0px"
  promo-banner:
    backgroundColor: "{colors.brand.primary}"
    textColor: "{colors.neutral.white}"
    iconColor: "{colors.neutral.white}"
    typography: "{typography.highlight-base}"
    bodyTypography: "{typography.body-small}"
    rounded: "{rounded.container}"
    padding: "{spacing.sm}"
    variants:
      subtle:
        backgroundColor: "{colors.brand.highlight}"
        textColor: "{colors.neutral.primary}"
      deal:
        backgroundColor: "{colors.deal.deal-highlight-lvl1}"
        textColor: "{colors.deal.text-on-white}"
      pro:
        backgroundGradient: "{colors.pro.pro-gradient-start} -> {colors.pro.pro-gradient-end}"
        textColor: "{colors.neutral.white}"
  sleeve-banner:
    backgroundColor: "{colors.interaction.secondary}"
    textColor: "{colors.neutral.white}"
    iconColor: "{colors.neutral.white}"
    typography: "{typography.body-base}"
    highlightTypography: "{typography.highlight-base}"
    rounded: "{rounded.container-edge}"
    padding: "{spacing.xs} {spacing.sm}"
    variants:
      default:
        backgroundColor: "{colors.interaction.secondary}"
        pressedBackgroundColor: "{colors.interaction.secondary-hover}"
      pro-primary:
        backgroundGradient: "{colors.pro.pro-gradient-start} -> {colors.pro.pro-gradient-end}"
        textColor: "{colors.neutral.white}"
      pro-subtle:
        backgroundColor: "{colors.pro.pro-deal-highlight-1}"
        pressedBackgroundColor: "{colors.pro.pro-deal-highlight-2}"
        textColor: "{colors.pro.on-pro-highlight}"
  quantity-stepper:
    backgroundColor: "{colors.neutral.white}"
    textColor: "{colors.neutral.primary}"
    iconColor: "{colors.neutral.primary}"
    borderColor: "{colors.interaction.secondary-border}"
    stroke: "{strokes.stroke-interactive}"
    typography: "{typography.highlight-base}"
    rounded: "{rounded.pill}"
    padding: "{spacing.xs}"
    variants:
      add-only:
        rounded: "{rounded.circle}"
      count-badge:
        backgroundColor: "{colors.interaction.secondary-selected}"
        textColor: "{colors.neutral.white}"
        rounded: "{rounded.circle}"
      split:
        backgroundColor: "{colors.neutral.transparent}"
  search-input:
    backgroundColor: "{colors.neutral.surface}"
    textColor: "{colors.neutral.primary}"
    placeholderColor: "{colors.neutral.secondary}"
    iconColor: "{colors.neutral.secondary}"
    focusColor: "{colors.interaction.focus}"
    stroke: "{strokes.stroke-input-focus}"
    typography: "{typography.body-base}"
    rounded: "{rounded.pill}"
    padding: "{spacing.xs} {spacing.sm}"
    variants:
      reversed:
        backgroundColor: "{colors.neutral.white}"
  radio-button:
    backgroundColor: "{colors.neutral.white}"
    textColor: "{colors.neutral.primary}"
    borderColor: "{colors.interaction.secondary-border}"
    selectedColor: "{colors.neutral.primary}"
    selectedInnerColor: "{colors.neutral.white}"
    disabledColor: "{colors.neutral.inactive}"
    stroke: "{strokes.stroke-interactive}"
    typography: "{typography.title-large}"
    rounded: "{rounded.circle}"
    padding: "0px"
  switch-default:
    backgroundColor: "{colors.neutral.surface}"
    textColor: "{colors.neutral.secondary}"
    iconColor: "{colors.neutral.secondary}"
    stroke: "{strokes.stroke-icon}"
    typography: "{typography.body-base}"
    rounded: "{rounded.pill}"
    padding: "{spacing.xs} {spacing.sm}"
    states:
      pressed:
        backgroundColor: "{colors.neutral.divider}"
  switch-stroked:
    backgroundColor: "{colors.neutral.white}"
    textColor: "{colors.neutral.secondary}"
    iconColor: "{colors.neutral.secondary}"
    borderColor: "{colors.interaction.secondary-border}"
    stroke: "{strokes.stroke-input}"
    typography: "{typography.body-base}"
    rounded: "{rounded.pill}"
    padding: "{spacing.xs} {spacing.sm}"
  switch-dynamic-label:
    backgroundColor: "{colors.neutral.surface}"
    textColor: "{colors.neutral.secondary}"
    iconColor: "{colors.neutral.secondary}"
    stroke: "{strokes.stroke-icon}"
    typography: "{typography.body-base}"
    rounded: "{rounded.pill}"
    padding: "{spacing.xs} {spacing.sm}"
    variants:
      as-a-whole:
        typography: "{typography.body-base}"
      letter-by-letter:
        typography: "{typography.body-base}"
      empty:
        textColor: "{colors.neutral.transparent}"
  snackbar:
    backgroundColor: "{colors.neutral.primary}"
    textColor: "{colors.neutral.white}"
    iconColor: "{colors.neutral.white}"
    borderColor: "{colors.neutral.white}"
    stroke: "{strokes.stroke-interactive}"
    typography: "{typography.body-base}"
    actionTypography: "{typography.highlight-base}"
    rounded: "{rounded.container}"
    padding: "{spacing.st} {spacing.sm}"
  tab:
    backgroundColor: "{colors.neutral.transparent}"
    textColor: "{colors.neutral.secondary}"
    selectedTextColor: "{colors.neutral.primary}"
    indicatorColor: "{colors.neutral.primary}"
    iconColor: "{colors.neutral.secondary}"
    stroke: "{strokes.stroke-navigation}"
    typography: "{typography.highlight-base}"
    rounded: "{rounded.pill}"
    padding: "{spacing.xs} {spacing.sm}"
    variants:
      reversed:
        textColor: "{colors.neutral.white}"
        selectedTextColor: "{colors.neutral.white}"
        indicatorColor: "{colors.neutral.white}"
  tag:
    backgroundColor: "{colors.tag.tag-primary-background}"
    textColor: "{colors.tag.tag-primary-text}"
    iconColor: "{colors.tag.tag-primary-text}"
    stroke: "{strokes.stroke-icon}"
    typography: "{typography.highlight-xsmall}"
    rounded: "{rounded.pill}"
    padding: "{spacing.xxs}"
    variants:
      primary:
        backgroundColor: "{colors.tag.tag-primary-background}"
        textColor: "{colors.tag.tag-primary-text}"
      deal:
        backgroundColor: "{colors.tag.tag-deal-background}"
        textColor: "{colors.tag.tag-deal-text}"
      secondary:
        backgroundColor: "{colors.tag.tag-secondary-background}"
        textColor: "{colors.tag.tag-secondary-text}"
      popular:
        backgroundColor: "{colors.tag.popular-highlight}"
        textColor: "{colors.tag.popular-tag-text}"
      inactive:
        backgroundColor: "{colors.neutral.surface}"
        textColor: "{colors.neutral.inactive}"
      information:
        backgroundColor: "{colors.system.information-highlight}"
        textColor: "{colors.system.information}"
      error:
        backgroundColor: "{colors.system.error-highlight}"
        textColor: "{colors.system.error}"
      success:
        backgroundColor: "{colors.system.success}"
        textColor: "{colors.tag.tag-success-text}"
      pro:
        backgroundColor: "{colors.pro.pro-deal-highlight-4}"
        textColor: "{colors.neutral.white}"
      pro-light:
        backgroundColor: "{colors.pro.pro-deal-highlight-1}"
        textColor: "{colors.pro.on-pro-highlight}"
  rating:
    backgroundColor: "{colors.neutral.transparent}"
    textColor: "{colors.neutral.primary}"
    secondaryTextColor: "{colors.neutral.secondary}"
    iconColor: "{colors.rating.ratings-rating}"
    typography: "{typography.highlight-xsmall}"
    bodyTypography: "{typography.body-xsmall}"
    rounded: "{rounded.base}"
    padding: "0px"
  dietary-tag:
    backgroundColor: "{colors.tag.tag-dietary-vegan-background}"
    textColor: "{colors.tag.tag-dietary-vegan}"
    iconColor: "{colors.tag.tag-dietary-vegan}"
    stroke: "{strokes.stroke-icon}"
    typography: "{typography.highlight-xsmall}"
    rounded: "{rounded.pill}"
    padding: "{spacing.xxs}"
    variants:
      vegan:
        backgroundColor: "{colors.tag.tag-dietary-vegan-background}"
        textColor: "{colors.tag.tag-dietary-vegan}"
      vegetarian:
        backgroundColor: "{colors.tag.tag-dietary-vegetarian-background}"
        textColor: "{colors.tag.tag-dietary-vegetarian}"
      spicy:
        backgroundColor: "{colors.tag.tag-dietary-spicy-background}"
        textColor: "{colors.tag.tag-dietary-spicy}"
      kids:
        backgroundColor: "{colors.tag.tag-dietary-kids-background}"
        textColor: "{colors.tag.tag-dietary-kids}"
  brand-tag:
    backgroundColor: "{colors.neutral.white}"
    textColor: "{colors.neutral.primary}"
    borderColor: "{colors.neutral.divider}"
    stroke: "{strokes.stroke-interactive-subtle}"
    typography: "{typography.highlight-xsmall}"
    rounded: "{rounded.pill}"
    padding: "{spacing.xxs}"
    states:
      loading:
        backgroundColor: "{colors.neutral.surface}"
        skeletonColor: "{colors.neutral.inactive}"
  transparent-tag:
    backgroundColor: "{colors.neutral.transparent}"
    textColor: "{colors.neutral.primary}"
    iconColor: "{colors.neutral.primary}"
    typography: "{typography.body-xsmall}"
    rounded: "{rounded.base}"
    padding: "0px"
  tooltip:
    backgroundColor: "{colors.system.information}"
    textColor: "{colors.neutral.white}"
    pointerColor: "{colors.system.information}"
    typography: "{typography.highlight-base}"
    rounded: "{rounded.overlay}"
    padding: "{spacing.xs} {spacing.sm}"
  vendor-list:
    backgroundColor: "{colors.neutral.white}"
    textColor: "{colors.neutral.primary}"
    secondaryTextColor: "{colors.neutral.secondary}"
    iconColor: "{colors.neutral.primary}"
    mediaRounded: "{rounded.media}"
    logoBackgroundColor: "{colors.neutral.white}"
    logoBorderColor: "{colors.neutral.divider}"
    typography: "{typography.title-small}"
    bodyTypography: "{typography.body-base}"
    rounded: "{rounded.container}"
    padding: "{spacing.sm}"

  vendor-tile:
    backgroundColor: "{colors.neutral.white}"
    textColor: "{colors.neutral.primary}"
    secondaryTextColor: "{colors.neutral.secondary}"
    iconColor: "{colors.neutral.primary}"
    mediaRounded: "{rounded.media}"
    logoBackgroundColor: "{colors.neutral.white}"
    logoBorderColor: "{colors.neutral.divider}"
    ratingColor: "{colors.rating.ratings-rating}"
    sponsoredBackgroundColor: "{colors.overlay.dark-64}"
    sponsoredTextColor: "{colors.neutral.white}"
    typography: "{typography.title-small}"
    bodyTypography: "{typography.body-base}"
    rounded: "{rounded.container}"
    padding: "{spacing.sm}"
    variants:
      deal:
        backgroundColor: "{colors.deal.deal-highlight-lvl2}"
        textColor: "{colors.deal.text-on-white}"
      pro-benefit:
        backgroundColor: "{colors.pro.pro-deal-highlight-1}"
        textColor: "{colors.pro.pro-primary}"
  walkthrough:
    backgroundColor: "{colors.neutral.white}"
    textColor: "{colors.neutral.primary}"
    secondaryTextColor: "{colors.neutral.secondary}"
    iconColor: "{colors.neutral.primary}"
    pointerColor: "{colors.neutral.white}"
    typography: "{typography.title-small}"
    bodyTypography: "{typography.body-base}"
    rounded: "{rounded.overlay}"
    padding: "{spacing.sm}"
    elevation: "High"
---

## Overview

Bento is foodpanda’s compact marketplace design system, built around dense commerce patterns such as vendor tiles, product lists, cards, tags, banners, carousels, and action controls.

The visual foundation is clean and functional: white and soft-grey surfaces, neutral text hierarchy, controlled strokes, and an 8px-based spacing rhythm.

Foodpanda magenta acts as the main chromatic signal for primary CTAs, deal emphasis, selected states, and high-attention interactions.

The system uses compact PP Agrandir and SF Pro typography, rounded but disciplined shapes, and semantic palettes for deals, Pro subscriptions, ratings, dietary tags, and system feedback.

**Key Characteristics:**
- Foodpanda magenta is the main chromatic signal: `{colors.interaction.primary}` `#e21b70` drives primary CTAs, deal tags, selected commercial emphasis, and high-attention interactive states.
- White and soft-grey product surfaces dominate the system: `{colors.neutral.white}` `#ffffff`, `{colors.neutral.surface}` `#f7f8f8`, `{colors.neutral.divider}` `#e8e9ea`, and `{colors.neutral.primary}` `#2e3138` create a dense marketplace UI foundation.
- Typography is compact and product-oriented: expressive `PP Agrandir` titles sit above utilitarian `SF Pro` body/highlight text, with a tight scale from 24px down to 10px and zero letter-spacing throughout.
- Hierarchy is carried mostly through weight, not size: body and highlight tokens often share the same size but shift from 400 to 700 weight for labels, metadata, prices, links, and interaction emphasis.
- Components are built around reusable commerce patterns — cards, product tiles, product lists, vendor tiles, prices, tags, banners, carousels, and choice cards — rather than decorative brand pages or editorial layouts.
- Shape language is rounded but controlled: buttons and media use 8px, containers use 12px, overlays use 16px, while pills, tags, search bars, circular buttons, and radio controls use `{rounded.pill}` / `{rounded.circle}` `9999px`.
- The system separates semantic palettes by purpose: deal pinks, Pro purples, rating yellows, dietary greens, and system feedback colours are reserved for specific product meanings instead of being used as general decoration.

## Colors

### Neutral
- **Neutral Primary** (`{colors.neutral.primary}` - #2e3138): Use for primary text and icons on light backgrounds.
- **Neutral Secondary** (`{colors.neutral.secondary}` - #6b7175): Use for secondary text, like subtitles or descriptions, on light backgrounds.
- **Neutral Border** (`{colors.neutral.border}` - #2e3138): Use for the border of non-interactive elements or dividers.   
- **Neutral Divider** (`{colors.neutral.divider}` - #e8e9ea): Use for dividers or separators to visually break up content.
- **Neutral Surface** (`{colors.neutral.surface}` - #f7f8f8): Use for secondary backgrounds, like a container or card surface.
- **Neutral Transparent** (`{colors.neutral.transparent}` - #ffffff00): Use for backgrounds that should be completely transparent, allowing content behind them to be visible.
- **Neutral Inactive** (`{colors.neutral.inactive}` - #b7babc): Use for text or icons in an inactive state.
- **White** (`{colors.neutral.white}` - #ffffff): Use for primary backgrounds or for text on dark backgrounds.

### Interaction
- **Interaction Primary** (`{colors.interaction.primary}` - #e21b70): Use for the default state of primary interactive elements, like a call-to-action button.
- **Interaction Primary Feedback** (`{colors.interaction.primary-feedback}` - #ffebeb): Use for the background of a primary interactive element after it has been interacted with.
- **Interaction Primary Hover** (`{colors.interaction.primary-hover}` - #c21760): Use for the hover state of primary interactive elements.
- **Interaction Secondary** (`{colors.interaction.secondary}` - #2e3138): Use for the default state of secondary interactive elements.
- **Interaction Secondary Border** (`{colors.interaction.secondary-border}` - #d3d5d7): Use for the border of a secondary interactive element.
- **Interaction Secondary Feedback** (`{colors.interaction.secondary-feedback}` - #f7f8f8): Use for the background of a secondary interactive element after it has been interacted with.
- **Interaction Secondary Hover** (`{colors.interaction.secondary-hover}` - #090c0f): Use for the hover state of secondary interactive elements.
- **Interaction Secondary Inactive** (`{colors.interaction.secondary-inactive}` - #):
- **Interaction Secondary Highlight** (`{colors.interaction.secondary-highlight}` - #f7f8f8): Use for highlighting or selecting a secondary interactive element.
- **Interaction Secondary Selected** (`{colors.interaction.secondary-selected}` - #2e3138): Use for the color of a secondary interactive element that is selected.
- **Interaction Secondary Inactive** (`{colors.interaction-secondary-inactive}` - #6b7175): Use for a secondary interactive element that is in an inactive state.
- **Interaction Tertiary** (`{colors.interaction.tertiary}` - #f77c99): Use for the default state of tertiary, or lowest-priority, interactive elements.
- **Interaction Background Hover** (`{colors.interaction.background-hover}` - #ffebeb): Use for a background in a hover state.
- **Interaction Focus** (`{colors.interaction.focus}` - #ff2b85): Use for the ring or outline that appears around a focused element.
- **Interaction Focus Reversed** (`{colors.interaction.focus-reversed}` - #ffebeb): Use for a focus ring or outline on a dark background.
- **On Interaction Primary** (`{colors.interaction.on-interaction-primary}` - #ffffff): Use for text or icons on a primary interactive element.
- **On Interaction Primary Hover** (`{colors.interaction.on-interaction-primary-hover}` - #ffffff): Use for text or icons on a primary interactive element in a hover state.
- **On Interaction Secondary** (`{colors.interaction.on-interaction-secondary}` - #2e3138): Use for text or icons on a secondary interactive element.
- **On Interaction Secondary Hover** (`{colors.interaction.on-interaction-secondary-hover}` - #090c0f): Use for text or icons on a secondary interactive element in a hover state.
- **Interaction Reversed White Opacity15** (`{colors.interaction.reversed-white-opacity15}` - #ffffff26): Use for a transparent white overlay on a dark background.
- **Interaction Reversed White Opacity30** (`{colors.interaction.reversed-white-opacity30}` - #ffffff4D): Use for a semi-transparent white overlay on a dark background.
- **Interaction Reversed White Opacity50** (`{colors.interaction.reversed-white-opacity50}` - #ffffff80): Use for a more opaque white overlay on a dark background.

### Brand
- **Primary** (`{colors.brand.primary}` - #c21760): Reserved for branded communication, headers, and key UI elements.
- **Secondary** (`{colors.brand.secondary}` - #6b7680): Reserved for branded communication, to provide contrast or highlight other brand elements. 
- **Dark** (`{colors.brand.dark}` - #c21760): Reserved for branded communication or for contrast.
- **Highlight** (`{colors.brand.highlight}` - #ffdddd): Reserved for a low-contrast highlight or background for branded communication.
- **Gradient Light** (`{colors.brand.gradient-light}` - #ffffff): This is the starting color for a brand gradient. Do not use this color outside of a gradient.
- **Gradient Dark** (`{colors.brand.gradient-dark}` - #ffdddd): This is the ending color for a brand gradient. Do not use this color outside of a gradient.

### System
- **Error** (`{colors.system.error}` - #bb2800): Use for text or icons in an error message or alert.
- **Error Highlight** (`{colors.system.error-highlight}` - #ffe3db): Use for the background of a low-contrast error message or alert.
- **Information** (`{colors.system.information}` - #25537c): Use for text or icons in an information message or alert.
- **Information Highlight** (`{colors.system.information-highlight}` - #dfedf7): Use for the background of a low-contrast informational message or alert.
- **Success** (`{colors.system.success}` - #3c8264): Use for text or icons in a success message or confirmation.
- **Success Highlight** (`{colors.system.success-highlight}` - #cbe7db): Use for the background of a low-contrast success message or confirmation.
- **Success Gradient Top** (`{colors.system.success-gradient-top}` - #f0f5f3): This is the starting color for a success-themed gradient. Do not use this color outside of a gradient.
- **Success Gradient Bottom** (`{colors.system.success-gradient-bottom}` - #f0f5f300): This is the ending color for a success-themed gradient. Do not use this color outside of a gradient.
- **Warning** (`{colors.system.warning}` - #fcc54c): Use for text or icons in a warning message or alert.
- **Warning Highlight** (`{colors.system.warning-highlight}` - #feefcd): Use for the background of a low-contrast warning message or alert.

### Deals
- **Deal Highlight Lvl1** (`{colors.deal.highlight-lvl1}` - #ffebeb): Use for the lightest level highlight on deal-related elements.
- **Deal Highlight Lvl2** (`{colors.deal.highlight-lvl2}` - #ffdddd): Use for a medium level highlight on deal-related elements.
- **Deal Primary** (`{colors.deal.primary}` - #c21760): Use for primary text or elements on a deal display.
- **Deal Secondary** (`{colors.deal.secondary}` - #f77c99): Use for secondary text or elements on a deal display.
- **Deal Tertiary** (`{colors.deal.tertiary}` - #ffc4cc): Use for tertiary text or elements on a deal display.
- **Deal Text on White** (`{colors.deal.text-on-white}` - #e21b70): Use for text on deal-related elements that are on a white background.
- **Deal Banner Text** (`{colors.deal.banner-text}` - #c21760): Use for text that appears on a deal banner.
- **Price Emphasis** (`{colors.deal.price-emphasis}` - #090c0f): Use for text that needs to emphasize a price, such as a discounted price.

### Ratings
- **Rating** (`{colors.rating.rating}` - #ffb413): Use for icons or text that represent a rating, like a star.
- **Rating Background** (`{colors.rating.background}` - #ffc4cc): Use for the background of a rating component.
- **Rating Feedback Backgrounde** (`{colors.rating.feedback-background}` - #ffebeb): Use for the background of a component where a user is giving rating feedback.
- **Rating Feedback Active** (`{colors.rating.feedback-active}` - #e21b70): Use for the active state of a rating feedback component.
- **Rating Outline** (`{colors.rating.outline}` - #e03000): Use for the outline or border of a rating component, particularly for an error or a special state.

### Pro 
- **Pro Primary** (`{colors.pro.pro-primary}` - #5c1d94): Use for the main color of subscription elements.
- **Pro Gradient Start** (`{colors.pro.pro-gradient-start}` - #6e3dab): This is the starting color for a subscription gradient. Do not use this color outside of a gradient.
- **Pro Gradient End** (`{colors.pro.pro-gradient-end}` - #5c1d94): This is the ending color for a subscription gradient. Do not use this color outside of a gradient.
- **Pro Deal Highlight 1** (`{colors.pro.pro-deal-highlight-1}` - #fcf3fe): Use for the lightest highlight on subscription deal elements.
- **Pro Deal Highlight 2** (`{colors.pro.pro-deal-highlight-2}` - #efddf5): Use for a low-contrast highlight on subscription deal elements.
- **Pro Deal Highlight 3** (`{colors.pro.pro-deal-highlight-3}` - #c69adf): Use for a medium highlight on subscription deal elements.
- **Pro Deal Highlight 4** (`{colors.pro.pro-deal-highlight-4}` - #5c1d94): Use for a dark highlight on subscription deal elements.
- **On Pro Highlight** (`{colors.pro.on-pro-highlight}` - #452c63): Use for text or icons that are placed on a subscription highlight background.

### Tag
- **Tag Deal Background** (`{colors.tag.tag-deal-background}` - #e21b70): Use for the background of a tag that communicates deals.
- **Tag Deal Text** (`{colors.tag.tag-deal-text}` - #ffffff): Use for the text on a deal tag.
- **Rating Light Tag Icon** (`{colors.tag.rating-light-tag-icon}` - #ffffff): Use for an icon on a light rating tag.
- **Rating Light Tag Text** (`{colors.tag.rating-light-tag-text}` - #ffffff): Use for the text on a light rating tag.
- **Tag Primary Text** (`{colors.tag.tag-primary-text}` - #ffffff): Use for the text on a primary tag.
- **Tag Primary Background** (`{colors.tag.tag-primary-background}` - #e21b70): Use for the background of a primary tag.
- **Popular Highlight** (`{colors.tag.popular-highlight}` - #ffedc6): Use for a low-contrast background for a popular tag.
- **Popular Tag Text** (`{colors.tag.popular-tag-text}` - #090c0f): Use for the text on a popular tag.
- **Popular Tag Icon** (`{colors.tag.popular-tag-icon}` - #090c0f): Use for the icon on a popular tag.
- **Tag Sponsored Background** (`{colors.tag.tag-sponsored-background}` - #090c0f, 64% opacity): Use for the background of a tag that communicates sponsored content.
- **Tag Success Text** (`{colors.tag.tag-success-text}` - #ffffff): Use for the text on a success tag.
- **Tag Secondary Text** (`{colors.tag.tag-secondary-text}` - #c21760): Use for the text on a secondary tag.
- **Tag Secondary Background** (`{colors.tag.tag-secondary-background}` - #ffdddd): Use for the background of a secondary tag.
- **Tag Dietary Vegan** (`{colors.tag.tag-dietary-vegan}` - #357258): Use for the icon or text on a dietary tag for vegan options.
- **Tag Dietary Vegan Background** (`{colors.tag.tag-dietary-vegan-background}` - #f0f5f3): Use for the background of a dietary tag for vegan options.
- **Tag Dietary Vegetarian** (`{colors.tag.tag-dietary-vegetarian}` - #357258): Use for the icon or text on a dietary tag for vegetarian options.
- **Tag Dietary Vegetarian Background** (`{colors.tag.tag-dietary-vegetarian-background}` - #f0f5f3): Use for the background of a dietary tag for vegetarian options.
- **Tag Dietary Spicy** (`{colors.tag.tag-dietary-spicy}` - #bb2800): Use for the icon or text on a dietary tag for spicy options.
- **Tag Dietary Spicy Background** (`{colors.tag.tag-dietary-spicy-background}` - #fdefeb): Use for the background of a dietary tag for spicy options.
- **Tag Dietary Kids** (`{colors.tag.tag-dietary-kids}` - #c21760): Use for the icon or text on a dietary tag for kid-friendly options.
- **Tag Dietary Kids Background** (`{colors.tag.tag-dietary-kids-background}` - #ffebeb): Use for the background of a dietary tag for kid-friendly options.

### Overlay
- **Dark 4** (`{colors.overlay.dark-4}` - #090c0f0a): A very subtle dark overlay for content, such as a transparent modal background.
- **Dark 64** (`{colors.overlay.dark-64}` - #090c0fa3): A semi-transparent dark overlay for content, to slightly obscure what's behind it.
- **Dark 80** (`{colors.overlay.dark-80}` - #090c0fd6): A dark overlay to significantly obscure content behind it, often for modal backgrounds.
- **Light 80** (`{colors.overlay.light-80}` - #ffffff8f): A light overlay to significantly obscure content behind it.
- **Light 56** (`{colors.overlay.light-56}` - #ffffffcc): A semi-transparent light overlay.

### Layout
- **Alt Screen Surface** (`{colors.layout.alt-screen-surface}` - #ffffff): Use for an alternative screen background, such as a light theme for a screen that is typically dark.
- **Surface Gradient Top** (`{colors.layout.surface-gradient-top}` - #ffebeb): This is the starting color for a screen-wide gradient. Do not use this color outside of a gradient.
- **Surface Gradient Bottom** (`{colors.layout.surface-gradient-bottom}` - #ffebeb, 0% opacity): This is the ending color for a screen-wide gradient. Do not use this color outside of a gradient.

### Item Modifier
- **Item Modifier Required Background** (`{colors.item-modifier.item-modifier-required-background}` - #ffebeb): Exclusive for the background of a UI element that indicates a required item.
- **Item Modifier Required Hover** (`{colors.item-modifier.item-modifier-required-hover}` - #ffdddd): Exclusive for the hover state background of a required item modifier.
- **Item Modifier Required Popular** (`{colors.item-modifier.item-modifier-required-popular}` - #ffc4cc): Exclusive for the background of a required item modifier that is also popular.

### Joker
- **Main Text** (`{colors.joker.MainText}` - #c21760): Exclusive for Flash Deals communications. Use for primary text.
- **Timer BG** (`{colors.joker.TimerBG}` - #c21760): Exclusive for Flash Deals communications. Use for the background of a timer.
- **Generic BG** (`{colors.joker.GenericBG}` - #ffdddd): Exclusive for Flash Deals communications. Use for a generic background.
- **Exp 2 Generic BG** (`{colors.joker.exp2GenericBG}` - #ffebeb): Exclusive for Flash Deals communications. Use for a generic background in the second experiment.

## Typoraphy

### Font Family

- **PP Agrandir** - Default title font; fallback `'PP Agrandir', 'Bricolage Grotesque', 'Chivo', 'Work Sans', 'Basic Sans', 'Segoe UI', -apple-system, system-ui, sans-serif`
- **SF Pro** - Default body and label font; fallback `'SF Pro', 'SF Pro Text', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, system-ui, sans-serif`

### Hierarchy

| Token | Size | Weight | Line Height | Letter Spacing | Use |
|---|---:|---:|---:|---:|---|
| `{typography.title-display}` | 24px | 800 | 28px | 0px | Primary page or screen titles |
| `{typography.title-large}` | 18px | 600 | 21px | 0px | Large section titles |
| `{typography.title-medium-strong}` | 18px | 800 | 21px | 0px | Emphasised medium titles |
| `{typography.title-small}` | 16px | 700 | 19px | 0px | Small section titles or card headers |
| `{typography.highlight-base}` | 14px | 700 | 16px | 0px | Emphasised body text or labels |
| `{typography.highlight-base-underlined}` | 14px | 700 | 16px | 0px | Emphasised links or underlined labels |
| `{typography.highlight-small}` | 12px | 700 | 14px | 0px | Small emphasised labels |
| `{typography.highlight-small-underlined}` | 12px | 700 | 14px | 0px | Small emphasised links |
| `{typography.highlight-xsmall}` | 10px | 700 | 11px | 0px | Extra-small emphasised metadata |
| `{typography.highlight-xsmall-underlined}` | 10px | 700 | 11px | 0px | Extra-small emphasised links |
| `{typography.body-base}` | 14px | 400 | 16px | 0px | Default body text |
| `{typography.body-small}` | 12px | 400 | 14px | 0px | Secondary body text |
| `{typography.body-small-underlined}` | 12px | 400 | 14px | 0px | Small body links |
| `{typography.body-xsmall}` | 10px | 400 | 11px | 0px | Captions, fine print, metadata |
| `{typography.body-xsmall-underlined}` | 10px | 400 | 11px | 0px | Extra-small caption links |

### Principles

- **Type family separates brand expression from utility.** Title tokens use the display stack — `PP Agrandir`, `Bricolage Grotesque`, `Chivo`, etc. — while body and highlight tokens use `SF Pro`. This keeps headings more branded and expressive, while body text stays system-native and highly legible.
- **Hierarchy is mostly carried by weight, not size.** Several tokens share the same size but change emphasis through weight: `title-large` and `title-medium-strong` are both 18px, but move from 600 to 800. Similarly, `body-base` and `highlight-base` are both 14px, but shift from 400 to 700.
- **The scale is compact and product-oriented.** The system moves from 24px → 18px → 16px → 14px → 12px → 10px. This is not an editorial typography scale; it is built for dense product UI where labels, metadata, prices, tags, and body copy need to coexist in tight layouts.
- **Line-height is tight across the system.** Most tokens use line-heights only slightly above their font size: 14px text uses 16px line-height, 12px uses 14px, and 10px uses 11px. This suggests the typography is optimised for compact interface components rather than long-form reading.
- **Underlined variants are semantic, not decorative.** Underline is only added as a dedicated token variant, such as `highlight-base-underlined`, `body-small-underlined`, and `body-xsmall-underlined`. This keeps link or tappable text treatment explicit and reusable instead of being applied manually.
- **Highlight tokens act as emphasis layers within the same scale.** `highlight-base`, `highlight-small`, and `highlight-xsmall` mirror the body sizes but use weight 700. This creates a clean pattern: body tokens carry default reading text, while highlight tokens carry labels, values, key metadata, and interaction emphasis.

## Layout

### Spacing System

- **Base unit**: 8px.
- **Tokens (front matter)**: `{spacing.xxxs}` 2px · `{spacing.xxs}` 4px · `{spacing.xs}` 8px · `{spacing.st}` 12px · `{spacing.sm}` 16px · `{spacing.md}` 24px · `{spacing.lg}` 32px · `{spacing.xl}` 48px · `{spacing.xxl}` 64px · `{spacing.xxxl}` 80px.
- **Micro spacing**: `{spacing.xxxs}` 2px and `{spacing.xxs}` 4px are used for fine optical adjustments, tight gaps, dividers, compact icon offsets, and small internal separations.
- **Base rhythm**: `{spacing.xs}` 8px anchors the system as the primary unit for small UI gaps and repeatable spacing increments.
- **Compact component spacing**: `{spacing.st}` 12px supports slightly denser layouts where 8px feels too tight but 16px feels too open.
- **Standard component padding**: `{spacing.sm}` 16px is the default interior padding for common UI components, compact cards, form areas, and grouped content.
- **Larger component padding**: `{spacing.md}` 24px and `{spacing.lg}` 32px are suited for cards, panels, modals, and content blocks that need clearer breathing room.
- **Section spacing**: `{spacing.xl}` 48px, `{spacing.xxl}` 64px, and `{spacing.xxxl}` 80px define larger vertical rhythm between content groups, page sections, and major layout blocks.
- **Universal rhythm principle**: spacing scales in mostly 8px-based increments, with 12px as an intermediate step for optical balance in dense UI layouts.

### Whitespace Philosophy

- Use less space between small components, or components that share a close functional relationship.
- Use multiples of 8px when defining spacing, and positioning elements.
- When necessary use 4px to make more fine-tuned adjustments.
- Whenever possible, make sure that objects line up, both vertically and horizontally.

## Elevation

| Level | Treatment | Use |
|---|---|---|
| Low | `0 0 24px 0 rgba(0,0,0,0.16)` | Use for subtle elevation where the component needs slight separation from the canvas, such as small floating cards, compact tiles, or low-emphasis surfaces. |
| Medium | `0 0 48px 0 rgba(0,0,0,0.24)` | Use for clearer elevation on interactive or prominent surfaces, such as selected cards, popovers, dropdowns, or expanded panels. |
| High | `0 0 96px 0 rgba(0,0,0,0.24)` | Use for strongest elevation where the surface should sit clearly above the page, such as modals, overlays, large floating panels, or focused preview states. |

## Strokes

| Token | Value | When to use |
|---|---:|---|
| `stroke-static` | 0.5 | Decorative or structural elements |
| `stroke-interactive-subtle` | 0.5 | Subtle interactive components |
| `stroke-interactive` | 1 | Interactive components |
| `stroke-divider` | 1 | Dividers and separators |
| `stroke-elevated` | 1 | Elements that overlay other elements |
| `stroke-input` | 1 | Input fields |
| `stroke-interactive-hover` | 1.5 | Hover states |
| `stroke-input-focus` | 1.5 | Input focus states |
| `stroke-icon` | 1.5 | All icons |
| `stroke-interactive-focus` | 2 | Focus states |
| `stroke-navigation` | 4 | Elements requiring immediate attention or strong visual dominance. |

## Shapes

### Corner Radius Scale

| Token | Value | Use |
|---|---:|---|
| `{rounded.button}` | 8px | Exclusively meant to be used on buttons. |
| `{rounded.button-pressed}` | 12px | Exclusively meant to be used on pressed states of buttons. |
| `{rounded.field}` | 12px | Exclusively meant to be used on fields, like text inputs. |
| `{rounded.switch}` | 8px | Exclusively meant to be used on switches. |
| `{rounded.container}` | 12px | Containers that wrap other elements, like tiles and cards. |
| `{rounded.container-pressed}` | 16px | Exclusively meant for pressed states of containers that wrap other elements, like tiles and cards. |
| `{rounded.container-edge}` | 16px | Edge-to-edge containers that wrap elements like tiles and cards, ensuring full-width coverage without gaps. |
| `{rounded.media}` | 8px | Media elements like images and videos. |
| `{rounded.overlay}` | 16px | Elements that overlay the entire screen, like modals and sheets. |
| `{rounded.mini}` | 4px | Any element that requires roundness but is not large enough to use other tokens, like checkboxes. |
| `{rounded.pill}` | 9999px | Elements that are pill-shaped in their default form, like pills and search bars. |
| `{rounded.circle}` | 9999px | Elements that are always circle-shaped, like radio buttons. |
| `{rounded.base}` | 8px | Fallback token for generic use cases that do not fit into any token. |
| `{rounded.base-pressed}` | 12px | Exclusively meant to be used on pressed states where the element originally uses the base token. |

## Components

### Accordions

**`accordion`** — Expandable content container. Used to progressively disclose supporting information while keeping the page compact. Available in default, pro primary, pro subtle, and subtle variants. Collapsed state shows the label and downward chevron; expanded state reveals the content slot and switches the chevron upward.
- Default: background `{colors.neutral.white}`, label `{colors.neutral.primary}`, icon `{colors.neutral.primary}`, body text `{colors.neutral.primary}`
- Pro primary: background `{colors.pro.pro-deal-highlight-4}`, label `{colors.neutral.white}`, icon `{colors.neutral.white}`, body text `{colors.neutral.white}`
- Pro subtle: background `{colors.pro.pro-deal-highlight-1}`, label `{colors.neutral.`primary}`, icon `{colors.neutral.primary}`, body text `{colors.neutral.primary}`
- Subtle: background `{colors.neutral.surface}`, label `{colors.neutral.primary}`, icon `{colors.neutral.primary}`, body text `{colors.neutral.primary}`
- Shape `{rounded.container}`, label type `{typography.title-small}`, body type `{typography.body-base}`

### Buttons

**Global button properties**
- Rounded `{rounded.button}`
- Contains disabled, pressed states for non-reversed buttons: pressed state shifts to background `{colors.interaction.primary-hover}`, rounded `{rounded.button-pressed}`; Disabled state shifts to background `{colors.interaction.secondary-inactive}`
- Contains disabled, pressed states for reversed buttons, pressed state shifts to background `{colors.interaction.primary-feedback}`, rounded `{rounded.button-pressed}`; Disabled state shifts to background `{colors.interaction.reversed-white-opacity15}`
- Contains default, small sizes: default padding `{spacing.xs} {spacing.sm}`, small padding `{spacing.xxs} {spacing.sm}`
- Contains two slots left and right in the button to support additional information or labels
- Can be fully stretched to fit all available width in container

**`button-primary`** — Primary interaction CTA. The default high-emphasis button for the main action in a flow. Use for primary CTAs such as “Continue”, “Confirm”, “Subscribe”, “Place order”, and other main progression actions.
- Background `{colors.interaction.primary}`, text `{colors.neutral.white}`, type `{typography.highlight-base}`

**`button-primary-reversed`** — Reversed primary interaction CTA. Used when the primary action needs to sit on a coloured, image-based, or high-emphasis surface while staying visually prominent.
- Background `{colors.neutral.white}`, text `{colors.interaction.primary}`, border `{colors.interaction.secondary-border}`, type `{typography.highlight-base}`

**`button-secondary`** — Secondary interaction CTA. Used for lower-emphasis actions that still need button affordance, such as “Cancel”, “Save”, “Edit”, or alternative actions beside a primary CTA.
- Background `{colors.neutral.white}`, text `{colors.interaction.on-interaction-secondary}`, border `{colors.interaction.secondary}`, type `{typography.highlight-base}`

**`button-secondary-reversed`** — Reversed secondary interaction CTA. Used for secondary actions on light, branded, image-based, or high-contrast surfaces where the reversed treatment needs stronger visual contrast.
- Background `{colors.interaction.secondary-hover}`, text `{colors.neutral.white}`, border `{colors.neutral.white}`, type `{typography.highlight-base}`

**`button-text`** — Text-only interaction button. Used for low-emphasis actions where a full button surface is unnecessary, such as “Edit”, “View details”, “Change”, or inline supporting actions.
- Background `{colors.neutral.transparent}`, text `{colors.interaction.on-interaction-secondary}`, type `{typography.highlight-base}`

**`button-circular`** — Circular icon button. Used for icon-only actions such as navigation controls, floating actions, carousel controls, or compact contextual actions. Available in large, medium default, and small sizes, with optional container, elevation, and label properties.
- Sizes: large for prominent icon actions, medium as the default, small for dense layouts or compact controls.
- Container: `false` uses no visible button surface; `true` uses background `{colors.neutral.white}`, border `{colors.interaction.secondary-border}`, rounded `{rounded.circle}`.
- Elevated: `false` uses no shadow; `true` applies low elevation to separate the button from the surface.
- Label: optional supporting label below the button, using text `{colors.neutral.primary}` and type `{typography.body-small}`.
- Icon `{colors.neutral.primary}`, stroke `{strokes.stroke-icon}`.

### Bottom Navigation

**`bottom-navigation`** — Persistent bottom navigation for switching between primary app destinations. Supports 3, 4, or 5 tabs, with optional home indication. Each tab contains an icon and label, distributed evenly across the navigation bar.
- Container background `{colors.neutral.white}`, top divider `{colors.neutral.divider}`, divider stroke `{strokes.stroke-divider}`
- Icon `{colors.neutral.secondary}`, icon stroke `{strokes.stroke-icon}`, label `{colors.neutral.secondary}`, label type `{typography.highlight-small}`
- Selected indicator `{colors.neutral.primary}`, indicator shape `{rounded.pill}`
- Layout: tab items distributed evenly, icon-to-label gap `{spacing.xxs}`, vertical padding `{spacing.xs}`, horizontal padding `{spacing.sm}`
- Home indication: optional bottom indicator using `{colors.neutral.primary}`, shape `{rounded.pill}`, with bottom safe-area spacing using `{spacing.xs}`

### Bottom Sheets
**`bottom-sheet`** — Modal surface anchored to the bottom of the screen. Used for focused actions, contextual decisions, or supporting flows without leaving the current screen. Supports default and reversed/pro surfaces, with a draggable handle, custom content slot, divider, and sticky footer action.
- Default surface: background `{colors.neutral.white}`, handle `{colors.neutral.divider}`, top shape `{rounded.overlay}`
- Reversed/pro surface: background gradient `{colors.pro.pro-gradient-start}` to `{colors.pro.pro-gradient-end}`, handle `{colors.neutral.white}`, divider `{colors.interaction.reversed-white-opacity30}`
- Divider `{colors.neutral.divider}`, divider stroke `{strokes.stroke-divider}`
- Footer action uses button tokens: primary action background `{colors.interaction.primary}`, text `{colors.neutral.white}`, type `{typography.highlight-base}`, rounded `{rounded.button}`
- Reversed footer action uses background `{colors.neutral.white}`, text `{colors.interaction.primary}`, border `{colors.interaction.secondary-border}`, type `{typography.highlight-base}`, rounded `{rounded.button}`
- Layout: horizontal padding `{spacing.sm}`, vertical section padding `{spacing.sm}`, handle-to-content spacing `{spacing.xs}`, content-to-footer spacing `{spacing.sm}`
- Content slot accepts a custom component; slot content should inherit its own colour, typography, spacing, and shape tokens.

### Banners

**Global banner properties**
- Shape `{rounded.container}`, text type `{typography.body-small}` or `{typography.body-base}`, link type `{typography.body-small-underlined}` or `{typography.highlight-small-underlined}`
- Layout: content padding `{spacing.xs}` / `{spacing.st}`, horizontal content gap `{spacing.xs}`, text-to-link gap `{spacing.xxxs}` or `{spacing.xxs}`
- Optional illustration slot: placed at the trailing edge; uses spacing `{spacing.xs}` from text content
- Variants: supports full-width and non-full-width layouts, single-line and multi-line content, with or without link label, and with or without trailing illustration
- Elevated variant: uses low elevation when the banner needs stronger separation from the surface
- Non-elevated variant: no shadow; banner sits directly on the parent surface

**`banner-information`** — Informational banner used to communicate neutral service updates, delivery notices, delays, or contextual guidance without implying an error or promotional state.
- Background `{colors.system.information-highlight}`, text `{colors.neutral.primary}`, link `{colors.neutral.primary}`
- Illustration/icon uses information or brand treatment where applicable; icon stroke `{strokes.stroke-icon}`
- Elevated state: background `{colors.system.information-highlight}`, shadow low elevation
- Full-width state: stretches to parent width while preserving internal padding `{spacing.xs}` / `{spacing.st}`

**`banner-deal`** — Deal or promotional banner used to communicate offers, incidents with promotional tone, or attention-grabbing commercial messages.
- Background `{colors.deal.deal-highlight-lvl1}` or `{colors.interaction.primary-feedback}`, text `{colors.neutral.primary}`, link `{colors.neutral.primary}`
- Deal/brand accent uses `{colors.deal.deal-banner-text}` or `{colors.interaction.primary}` where emphasis is needed
- Illustration/icon uses deal or brand accent treatment; icon stroke `{strokes.stroke-icon}`
- Elevated state: background `{colors.deal.deal-highlight-lvl1}` or `{colors.interaction.primary-feedback}`, shadow low elevation
- Full-width state: stretches to parent width while preserving internal padding `{spacing.xs}` / `{spacing.st}`

### Card

**`card`** — Flexible container used to group related content, actions, media, and metadata into a single scannable unit. Supports header content, product/media rows, dividers, footer actions, promotional strips, and custom content slots.
- Container background `{colors.neutral.white}`, border `{colors.interaction.secondary-border}`, stroke `{strokes.stroke-interactive}`, shape `{rounded.container}`
- Header: title text `{colors.neutral.primary}` with type `{typography.title-small}`; subtitle/metadata text `{colors.neutral.secondary}` with type `{typography.body-small}`
- Media: image or icon slots use shape `{rounded.media}`; media containers may use background `{colors.neutral.surface}` with border `{colors.interaction.secondary-border}`
- Divider: colour `{colors.neutral.divider}`, stroke `{strokes.stroke-divider}`
- Footer actions: primary action uses background `{colors.interaction.primary}`, text `{colors.neutral.white}`, type `{typography.highlight-base}`, rounded `{rounded.button}`; secondary action uses background `{colors.neutral.white}`, text `{colors.interaction.on-interaction-secondary}`, border `{colors.interaction.secondary}`, stroke `{strokes.stroke-interactive}`, rounded `{rounded.button}`
- Promotional strip or deal footer uses background `{colors.interaction.primary-feedback}`, text `{colors.interaction.primary}`, icon `{colors.interaction.primary}`, type `{typography.highlight-small}`
- Optional trailing actions use icon `{colors.neutral.primary}` with stroke `{strokes.stroke-icon}`
- Layout: card padding `{spacing.sm}`, header-to-content spacing `{spacing.sm}`, media/item gap `{spacing.xs}`, section spacing `{spacing.sm}`, footer button gap `{spacing.xs}`

### Carousel

**`carousel`** — Horizontally scrollable content group used to display related product tiles, recommendations, promotions, or curated collections. Supports simple header, highlighted header, media header, and contained card treatments.
- Container: default uses background `{colors.neutral.transparent}`; contained variant uses background `{colors.neutral.white}`, shape `{rounded.container}`
- Highlighted header: background gradient uses `{colors.layout.surface-gradient-top}` to `{colors.layout.surface-gradient-bottom}`, shape `{rounded.container}`
- Media header: image/media area uses shape `{rounded.media}` or `{rounded.container}` when attached to a contained carousel
- Header icon: background `{colors.neutral.surface}`, icon `{colors.neutral.white}`, shape `{rounded.mini}`
- Header title: text `{colors.neutral.primary}`, type `{typography.title-small}`
- Header subtitle: text `{colors.neutral.secondary}`, type `{typography.body-small}`
- Navigation action: background `{colors.neutral.white}`, icon `{colors.neutral.primary}`, border `{colors.interaction.secondary-border}`, shape `{rounded.circle}`, stroke `{strokes.stroke-icon}`
- Content: product items use `product-tile` as the nested item component
- Layout: header padding `{spacing.sm}`, icon-to-text gap `{spacing.xs}`, title-to-subtitle gap `{spacing.xxxs}`, header-to-content gap `{spacing.xs}`, carousel item gap `{spacing.xs}`

### Checkboxes

**`checkbox`** — Selection control used when users can choose one or more options from a set. Supports selected, unselected, disabled, and optional label variants.
- Unselected: background `{colors.neutral.white}`, border `{colors.interaction.secondary-border}`, stroke `{strokes.stroke-input}`.
- Selected: background `{colors.interaction.secondary-selected}`, checkmark `{colors.neutral.white}`.
- Disabled unselected: background `{colors.neutral.white}`, border `{colors.neutral.inactive}`, stroke `{strokes.stroke-input}`.
- Disabled selected: background `{colors.neutral.inactive}`, checkmark `{colors.neutral.white}`.
- Label: text `{colors.neutral.primary}`, disabled label `{colors.neutral.inactive}`, type `{typography.highlight-base}`.
- Shape: checkbox `{rounded.mini}`.
- Layout: checkbox-to-label gap `{spacing.xs}`.

### Card Description

**`card-description`** — Compact descriptive card used to communicate a benefit, feature, or promotional value proposition. Supports default and pro styles, optional media, multi-line title text, and a custom content slot.
- Default: background `{colors.neutral.white}`, text `{colors.neutral.primary}`, border `{colors.interaction.secondary-border}`, stroke `{strokes.stroke-interactive}`, shape `{rounded.container}`
- Pro: background `{colors.pro.pro-deal-highlight-4}`, text `{colors.neutral.white}`, shape `{rounded.container}`
- Title uses `{typography.title-small}` and can wrap across multiple lines when content is not truncated.
- Media slot sits above the title and inherits asset-specific styling.
- Custom content slot can replace the title area; slot content should define its own colour, typography, spacing, shape, and stroke tokens.
- Layout: internal padding `{spacing.sm}`, media-to-title gap `{spacing.xs}`, content slot spacing follows `{spacing.xs}` or `{spacing.sm}` depending on density.

### Category Tiles

**`category-tile`** — Selectable category entry used to browse, filter, or navigate by product/category type. Supports vertical and horizontal layouts, none/subtle/contained surfaces, default/highlighted/deal treatments, selected and pressed states, and loading skeletons.
- Global: label `{colors.neutral.primary}`, label type `{typography.highlight-xsmall}` or `{typography.highlight-small}`, icon/image container shape `{rounded.media}`, selected border stroke `{strokes.stroke-interactive}`, icon-to-label gap `{spacing.xxs}`
- Layout: vertical stacks image above label; horizontal places image before label with gap `{spacing.xs}`; contained variants use internal padding `{spacing.xs}` or `{spacing.st}`
- None: background `{colors.neutral.transparent}`, no container border, used when the tile should sit directly on the parent surface
- Subtle: background `{colors.neutral.surface}`, shape `{rounded.container}`, used for lower-emphasis category entries with a visible but quiet surface
- Contained: background `{colors.neutral.white}`, shape `{rounded.container}`, used when the category tile needs clearer card affordance
- Default treatment: background `{colors.neutral.white}` or `{colors.neutral.surface}`, label `{colors.neutral.primary}`, selected border `{colors.neutral.border}`
- Highlighted treatment: background `{colors.neutral.white}` or `{colors.neutral.surface}`, label `{colors.neutral.primary}`, selected border `{colors.neutral.border}`
- Deal treatment: background `{colors.interaction.primary-feedback}`, label `{colors.neutral.primary}`, selected border `{colors.interaction.primary}`
- Selected: applies border using `{strokes.stroke-interactive}`; default/highlighted selected border uses `{colors.neutral.border}`, deal selected border uses `{colors.interaction.primary}`
- Pressed: uses pressed container shape `{rounded.container-pressed}` where the tile has a visible surface
- Loading: skeleton surface `{colors.neutral.surface}`, skeleton marks `{colors.neutral.inactive}`, shape `{rounded.container}` or `{rounded.media}` depending on placeholder area

### Choice Card

**`choice-card`** — Selectable container used to house a subcomponent or compact content block as a choice option. Use when users need to select one item from a set, such as delivery options, benefit options, modifiers, or compact preference choices.
- Global: minimum size 32px × 32px, shape `{rounded.container}`, padding `{spacing.st}`, content spacing can be substituted with any spacing token or omitted when the child component defines its own layout
- Inactive: background `{colors.neutral.white}`, border `{colors.interaction.secondary-border}`, border stroke `{strokes.stroke-interactive}`, no elevation
- Active: background `{colors.interaction.secondary-highlight}`, border `{colors.interaction.focus}`, border stroke `{strokes.stroke-interactive-focus}`
- Pressed: background `{colors.interaction.secondary-feedback}`, border `{colors.interaction.secondary-border}`, border stroke `{strokes.stroke-interactive}`
- Disabled: background `{colors.neutral.surface}`, border none, no elevation
- Content slot: inherits the child component’s icon, text, typography, and spacing tokens; the choice card only controls selectable surface, padding, shape, border, and state treatment

### Dividers

**`divider`** — Visual separator used to divide content, group related sections, or create structure between adjacent UI elements. Supports thin, dashed, and thick styles in horizontal or vertical orientation, with default and reversed colour treatments compressed into the same component.
- Line colour `{colors.neutral.divider}` on light surfaces or `{colors.interaction.reversed-white-opacity30}` on dark surfaces; thin stroke `{strokes.stroke-static}`, dashed stroke `{strokes.stroke-divider}`, thick stroke `{strokes.stroke-navigation}`
- Orientation: horizontal for separating stacked content, vertical for separating side-by-side content.
- Layout: spacing before and after dividers should follow the surrounding component rhythm using `{spacing.xs}`, `{spacing.st}`, or `{spacing.sm}` depending on density.

### Headers

**`header`** — Screen-level container that anchors navigation, page context, and optional supporting modules at the top of a screen. Houses the `navigation-bar` component and can include search, tabs, filter pills, progress stepper, banners, or a custom content slot.
- Default header: background `{colors.neutral.white}`, title `{colors.neutral.primary}`, subtitle `{colors.neutral.secondary}`, icons `{colors.neutral.primary}`, icon stroke `{strokes.stroke-icon}`
- Reversed/primary header: background `{colors.interaction.primary}`, title `{colors.neutral.white}`, subtitle `{colors.neutral.white}`, icons `{colors.neutral.white}`, icon stroke `{strokes.stroke-icon}`
- Navigation bar: inherits `navigation-bar` structure; supports leading menu, title/subtitle, link action, and trailing icon actions.
- Search module: field background `{colors.neutral.surface}`, input text `{colors.neutral.primary}`, placeholder `{colors.neutral.secondary}`, search/filter icons `{colors.neutral.secondary}`, shape `{rounded.pill}`, type `{typography.body-small}`
- Tab module: selected text `{colors.neutral.primary}` or `{colors.neutral.white}` on reversed headers, active text `{colors.neutral.secondary}` or `{colors.neutral.white}`, indicator uses matching foreground colour, stroke `{strokes.stroke-navigation}`, shape `{rounded.pill}`, type `{typography.highlight-base}`
- Filter pill module: background `{colors.neutral.white}`, text `{colors.neutral.primary}`, border `{colors.interaction.secondary-border}`, icon `{colors.neutral.primary}`, shape `{rounded.pill}`, stroke `{strokes.stroke-interactive}`, type `{typography.highlight-small}`
- Progress stepper module: active step background `{colors.neutral.primary}`, active text `{colors.neutral.white}`, inactive step background `{colors.neutral.divider}`, inactive text `{colors.neutral.secondary}`, shape `{rounded.circle}`, connector stroke `{strokes.stroke-divider}`, label type `{typography.highlight-xsmall}`
- Banner/content module: background `{colors.system.information-highlight}`, text `{colors.neutral.primary}`, link `{typography.body-small-underlined}`, link text `{colors.neutral.primary}`
- Custom slot: supports injected content below the navigation bar; slot content should inherit its own colour, typography, spacing, shape, and stroke tokens.
- Layout: horizontal padding `{spacing.sm}`, vertical padding `{spacing.xs}`, navigation-to-module spacing `{spacing.xs}`, module item gap `{spacing.xs}`, compact internal gaps `{spacing.xxs}`; bottom divider uses `{colors.neutral.divider}` with `{strokes.stroke-divider}` when separating header from page content.

### Input Fields

**`input-field`** — Form field used to capture short text, values, or structured user input. Supports label, placeholder, filled value, helper text, leading icon, trailing icon, trailing link, disabled, error, and success states.
- Global: background `{colors.neutral.white}`, shape `{rounded.field}`, border `{colors.interaction.secondary-border}`, border stroke `{strokes.stroke-input}`, input text `{colors.neutral.primary}`, placeholder `{colors.neutral.secondary}`, label `{colors.neutral.primary}`
- Typography: label type `{typography.body-xsmall}`, input value type `{typography.body-base}`, helper/error/success message type `{typography.body-xsmall}`, trailing link type `{typography.highlight-xsmall-underlined}`
- Layout: horizontal padding `{spacing.st}`, vertical padding `{spacing.xs}`, label-to-field gap `{spacing.xxxs}`, field-to-helper gap `{spacing.xxxs}`, icon-to-text gap `{spacing.xs}`
- Leading icon: icon `{colors.interaction.primary}`, icon stroke `{strokes.stroke-icon}`, used when the field needs a contextual input cue
- Trailing icon: icon `{colors.neutral.primary}`, icon stroke `{strokes.stroke-icon}`, used for field actions such as visibility toggle, clear, or contextual control
- Trailing link: text `{colors.interaction.on-interaction-secondary}`, type `{typography.highlight-xsmall-underlined}`, used for compact inline actions inside the field
- Filled: value text `{colors.neutral.primary}`, border `{colors.interaction.secondary-border}`
- Disabled: background `{colors.neutral.surface}`, border `{colors.neutral.surface}`, label/input/icon `{colors.neutral.inactive}`
- Error: border `{colors.system.error}`, border stroke `{strokes.stroke-input-focus}`, helper text `{colors.system.error}`, helper icon `{colors.system.error}`
- Success: border `{colors.system.success}`, border stroke `{strokes.stroke-input-focus}`, helper text `{colors.system.success}`, helper icon `{colors.system.success}`

### Links

**`link`** — Underlined text action used for inline navigation, secondary actions, or supporting actions where a full button surface is unnecessary. Available in default and reversed treatments for light or dark surfaces.
- Default: text `{colors.interaction.on-interaction-secondary}`, type `{typography.highlight-base-underlined}`
- Reversed: text `{colors.neutral.white}`, type `{typography.highlight-base-underlined}`
- Small size uses type `{typography.highlight-small-underlined}` when the link appears in compact layouts or metadata-level actions.

### List Item

**`list`** — Tappable list item used to display a short title and supporting subtitle, usually leading to a detail view or next step. Supports optional leading icon, optional supporting info icon, trailing chevron, and outlined surface treatment.
- Container: background `{colors.neutral.white}`, shape `{rounded.container}`.
- Text: title `{colors.neutral.primary}` with `{typography.title-small}`, subtitle `{colors.neutral.primary}` with `{typography.body-base}`.
- Icons: leading icon, supporting info icon, and trailing chevron use `{colors.neutral.primary}` with stroke `{strokes.stroke-icon}`.
- Outlined variant: border `{colors.interaction.secondary-border}`, stroke `{strokes.stroke-interactive}`.
- Layout: internal padding `{spacing.sm}`, leading icon-to-content gap `{spacing.sm}`, title-to-subtitle gap `{spacing.xxxs}`, content-to-supporting icon gap `{spacing.sm}`, trailing chevron aligned to the end with `{spacing.sm}` spacing.

### Messages

**Global properties** — Shared structure for all message components. Used to keep feedback messages visually consistent across information, warning, error, and success types.
- Container shape `{rounded.container}`, title `{typography.title-small}` or `{typography.highlight-base}`, body `{typography.body-base}` or `{typography.body-small}`.
- Layout: internal padding `{spacing.sm}`, icon-to-content gap `{spacing.xs}`, title-to-body gap `{spacing.xxxs}`, stacked action top spacing `{spacing.xs}`, trailing action spacing `{spacing.sm}`.
- Action button: background `{colors.neutral.transparent}`, text `{colors.interaction.on-interaction-secondary}`, border `{colors.interaction.secondary}`, stroke `{strokes.stroke-interactive}`, shape `{rounded.button}`, label `{typography.highlight-base}`.
- Navigation variant: trailing chevron uses `{colors.neutral.primary}`, stroke `{strokes.stroke-icon}`.
- Variants: supports stacked action, trailing action, and navigation treatment.

**`message-information`** — Informational feedback message. Used for neutral guidance, status updates, availability notes, or contextual help that does not require urgent action.
- Background `{colors.system.information-highlight}`, title `{colors.neutral.primary}`, body `{colors.neutral.primary}`, icon `{colors.system.information}`.

**`message-warning`** — Warning feedback message. Used when the user should be aware of a possible consequence, risk, or irreversible change before continuing.
- Background `{colors.system.warning-highlight}`, title `{colors.neutral.primary}`, body `{colors.neutral.primary}`, icon `{colors.neutral.primary}`.

**`message-error`** — Error feedback message. Used when something failed, is blocked, or requires correction before the user can proceed.
- Background `{colors.system.error-highlight}`, title `{colors.neutral.primary}`, body `{colors.neutral.primary}`, icon `{colors.system.error}`.

**`message-success`** — Success feedback message. Used to confirm that an action was completed successfully or that a positive system state has been reached.
- Background `{colors.system.success-highlight}`, title `{colors.neutral.primary}`, body `{colors.neutral.primary}`, icon `{colors.system.success}`.

### Modals

**`modal`** — Centered overlay surface used for high-attention decisions, confirmations, or blocking flows. Supports title, subtitle/body content, optional close action, and one or two actions using primary and secondary buttons.
- Overlay background `{colors.overlay.dark-80}`, modal surface `{colors.neutral.white}`, shape `{rounded.overlay}`, elevation `High`
- Title text `{colors.neutral.primary}`, title type `{typography.title-display}`; subtitle/body text `{colors.neutral.secondary}`, subtitle/body type `{typography.body-base}`
- Close action icon `{colors.neutral.primary}`, icon stroke `{strokes.stroke-icon}`
- Primary action: background `{colors.interaction.primary}`, text `{colors.neutral.white}`, type `{typography.highlight-base}`, rounded `{rounded.button}`
- Secondary action: background `{colors.neutral.white}`, text `{colors.interaction.on-interaction-secondary}`, border `{colors.interaction.secondary}`, stroke `{strokes.stroke-interactive}`, type `{typography.highlight-base}`, rounded `{rounded.button}`
- Layout: modal padding `{spacing.md}`, content-to-action spacing `{spacing.md}`, title-to-subtitle spacing `{spacing.xxs}`, button stack or button row gap `{spacing.xs}`

### Navigation Bars

**`navigation-bar`** — Header-level navigation bar used inside a `header` component to provide page context, navigation access, search entry, and trailing actions. Supports title/subtitle, title-only, branded title, search field, custom content slot, leading menu, link action, icon actions, and disabled action states.
- Container background `{colors.neutral.white}`, bottom divider `{colors.neutral.divider}`, divider stroke `{strokes.stroke-divider}`
- Leading icon uses `{colors.neutral.primary}` with stroke `{strokes.stroke-icon}`; supports menu or navigation affordance.
- Title content: title text `{colors.neutral.primary}` with type `{typography.highlight-small}`; subtitle text `{colors.neutral.secondary}` with type `{typography.body-xsmall}`
- Branded title/content uses `{colors.interaction.primary}` for brand-emphasis text or logo treatment, with supporting subtitle `{colors.neutral.secondary}`
- Search variant: search field background `{colors.neutral.surface}`, input text `{colors.neutral.primary}`, placeholder `{colors.neutral.secondary}`, search/clear icons `{colors.neutral.secondary}`, shape `{rounded.pill}`, type `{typography.body-small}`
- Custom slot variant: slot area may contain custom content; slot surface should use inherited component tokens, with focus/selection outline using `{colors.interaction.focus}` where applicable.
- Trailing actions: link text `{colors.neutral.primary}` with type `{typography.highlight-small}`; icon actions use `{colors.neutral.primary}` with stroke `{strokes.stroke-icon}`
- Disabled action state uses `{colors.neutral.inactive}` for link or icon colour.
- Layout: horizontal padding `{spacing.sm}`, item gap `{spacing.xs}`, compact icon-to-text spacing `{spacing.xxs}`, vertical padding `{spacing.xs}`; trailing actions align to the right and may combine link plus one or more icon actions.

### Pills

**Global properties** — Shared pill behaviour and styling across default, small, row, and icon pills. Used for compact filtering, selection, or categorisation controls.
- Shape `{rounded.pill}`, border `{colors.interaction.secondary-border}`, stroke `{strokes.stroke-interactive}`.
- Default state: background `{colors.neutral.white}`, text `{colors.neutral.primary}`, icon `{colors.neutral.primary}`.
- Selected state: background `{colors.interaction.secondary-selected}`, text `{colors.neutral.white}`, icon `{colors.neutral.white}`.
- Disabled state: background `{colors.neutral.inactive}`, text `{colors.neutral.white}`, icon `{colors.neutral.white}`.
- Icon stroke `{strokes.stroke-icon}`.

**`pill-default`** — Standard pill used for selectable labels, filters, or short categorical controls. Supports text-only, leading icon, trailing icon, and icon-position variants.
- Text `{typography.highlight-base}`, horizontal padding `{spacing.sm}`, vertical padding `{spacing.xs}`, icon-to-text gap `{spacing.xs}`.

**`pill-small`** — Compact pill used in tighter layouts where the default pill takes too much space. Supports the same text-only, leading icon, trailing icon, and icon-position variants as the default pill.
- Text `{typography.highlight-small}`, horizontal padding `{spacing.st}`, vertical padding `{spacing.xxs}`, icon-to-text gap `{spacing.xxs}`.

**`pill-row`** — Grouped pill layout used to present multiple related selectable options under a short section label.
- Row title `{colors.neutral.primary}`, title type `{typography.title-small}`.
- Pill items use `pill-default` styling, with item gap `{spacing.xs}` and row-to-row spacing `{spacing.md}`.

**`pill-icon`** — Icon-only pill used for compact actions such as filtering or sorting. Supports selected, unselected, disabled, and badge variants.
- Container background follows global pill states; icon uses `{colors.neutral.primary}` or `{colors.neutral.white}` based on state.
- Badge: background `{colors.interaction.primary}`, text `{colors.neutral.white}`, type `{typography.highlight-xsmall}`, shape `{rounded.circle}`.
- Layout: icon-only padding `{spacing.xs}`, badge offset uses `{spacing.xxxs}`.

### Price

**`price`** — Reusable price text subcomponent used inside product tiles, vendor cards, item rows, baskets, fees, and promotional surfaces. Supports default, discounted, struck-through, promo, Pro, delivery-fee, sold-out, and unit-price treatments.
- Global: primary price text `{colors.neutral.primary}`, secondary price text `{colors.neutral.secondary}`, type `{typography.highlight-base}` or `{typography.title-small}` depending on component density
- Default price: text `{colors.neutral.primary}`, type `{typography.highlight-base}`
- Emphasised price: text `{colors.deal.price-emphasis}`, type `{typography.title-small}`
- Discounted price: current price `{colors.interaction.primary}`, original price `{colors.neutral.secondary}` with strikethrough, promo text `{colors.interaction.primary}`, type `{typography.title-small}`
- Pro price: text `{colors.pro.pro-deal-highlight-4}`, Pro tag background `{colors.pro.pro-deal-highlight-1}`, Pro tag text/icon `{colors.pro.on-pro-highlight}`, type `{typography.highlight-base}`
- Delivery fee price: label and base text `{colors.neutral.secondary}`, discounted/free value `{colors.interaction.primary}`, original price `{colors.neutral.secondary}` with strikethrough, type `{typography.highlight-base}`
- Unit price: price text `{colors.neutral.primary}`, unit suffix `{colors.neutral.secondary}`, type `{typography.highlight-small}`
- Promo unit price: current price and unit suffix `{colors.interaction.primary}`, comparison price `{colors.neutral.secondary}`, type `{typography.highlight-small}`
- Sold-out price: sold-out badge background `{colors.system.information-highlight}`, badge text `{colors.system.information}`, current price `{colors.neutral.primary}`, original price `{colors.neutral.secondary}` with strikethrough, badge shape `{rounded.pill}`, badge type `{typography.highlight-base}`
- Struck-through price: text `{colors.neutral.secondary}` with strikethrough, used for original price, unavailable price, or replaced fee values
- Inline price group: price-to-price spacing `{spacing.xs}`, icon-to-label spacing `{spacing.xxxs}` or `{spacing.xxs}`, icon stroke `{strokes.stroke-icon}`

### Product Tiles 

**`product-tile`** — Grid-based product or menu item tile used to browse purchasable items in restaurants, shops, groceries, and product collections. Supports multiple media sizes, add action overlay, price-led or name-led content hierarchy, supporting metadata, deposit text, and optional product tags.
- Media: background `{colors.neutral.surface}`, shape `{rounded.media}`; placeholder icon uses `{colors.neutral.white}`
- Add action: background `{colors.neutral.white}`, icon `{colors.neutral.primary}`, border `{colors.interaction.secondary-border}`, shape `{rounded.circle}`, stroke `{strokes.stroke-icon}`; elevated overlap action uses low elevation
- Price: text `{colors.neutral.primary}`, type `{typography.highlight-base}`
- Product name / dish name: text `{colors.neutral.primary}`, type `{typography.highlight-base}`
- Supporting metadata: text `{colors.neutral.secondary}`, type `{typography.body-small}`
- Deposit / secondary line: text `{colors.neutral.secondary}`, type `{typography.body-small}`
- Featured tag: background `{colors.neutral.white}`, text/icon `{colors.neutral.primary}`, border `{colors.neutral.divider}`, shape `{rounded.pill}`, type `{typography.highlight-small}`
- Dietary tags: vegan/vegetarian uses background `{colors.tag.tag-dietary-vegan-background}`, text/icon `{colors.tag.tag-dietary-vegan}`, shape `{rounded.circle}`; use equivalent dietary tag tokens when available
- Layout: media-to-content gap `{spacing.xs}`, text stack gap `{spacing.xxxs}`, tag row gap `{spacing.xxs}`, tag row spacing from content `{spacing.xs}`

### Product Lists

**`product-list`** — Row-based product item used to display purchasable items in menus, shops, groceries, or add-on lists. Supports image-leading, image-trailing, no-image, divider-separated, and contained card treatments, with an optional add action.
- Container: background `{colors.neutral.white}`; card variant uses background `{colors.neutral.white}`, border `{colors.interaction.secondary-border}`, stroke `{strokes.stroke-interactive}`, shape `{rounded.container}`
- Divider variant: divider `{colors.neutral.divider}`, stroke `{strokes.stroke-divider}`
- Media: background `{colors.neutral.surface}`, shape `{rounded.container}`; placeholder icon uses `{colors.neutral.white}`
- Title: text `{colors.neutral.primary}`, type `{typography.title-small}`
- Subtitle: text `{colors.neutral.primary}`, type `{typography.body-base}`
- Add action: background `{colors.neutral.white}`, icon `{colors.neutral.primary}`, border `{colors.interaction.secondary-border}`, shape `{rounded.circle}`, stroke `{strokes.stroke-icon}`; elevated image-overlap action uses low elevation
- Layout: item padding `{spacing.sm}`, media-to-content gap `{spacing.st}`, title-to-subtitle gap `{spacing.xxs}`, content-to-action gap `{spacing.sm}`
- Variants: image-leading places media before content; image-trailing places media after content; no-image removes the media slot while preserving content and action alignment

### Progress Steppers

**`progress-stepper`** — Linear progress indicator used to show users their current position across a multi-step flow. Supports 3, 4, and 5-step layouts, with one active step and remaining inactive steps distributed evenly across the horizontal track.
- Global: track `{colors.neutral.divider}`, track stroke `{strokes.stroke-navigation}`, step shape `{rounded.circle}`, step number type `{typography.highlight-base}`, label type `{typography.title-small}`
- Layout: steps distributed evenly across the available width, step-to-label gap `{spacing.xs}`, label centred under each step
- Active step: circle background `{colors.neutral.primary}`, number `{colors.neutral.white}`, label `{colors.neutral.primary}`
- Inactive step: circle background `{colors.neutral.white}`, border `{colors.interaction.secondary-border}`, border stroke `{strokes.stroke-navigation}`, number `{colors.neutral.secondary}`, label `{colors.neutral.secondary}`

### Promo Banners

**`promo-banner`** — Promotional content container for campaign, benefit, deal, or subscription messages. Used when short marketing content needs to combine text, CTA affordance, and optional media inside a tappable banner.
- Container: default brand background `{colors.brand.primary}`, subtle background `{colors.brand.highlight}` or `{colors.deal.highlight-lvl1}`, Pro background `{colors.pro.pro-gradient-start}` → `{colors.pro.pro-gradient-end}` or `{colors.pro.pro-primary}`.
- Text/icon: use `{colors.neutral.white}` on brand, deal, or Pro surfaces; use `{colors.neutral.primary}`, `{colors.deal.text-on-white}`, or `{colors.pro.on-pro-highlight}` on light surfaces.
- Content: title `{typography.highlight-base}` or `{typography.title-small}` for larger banners, body `{typography.body-small}`, CTA/value text `{typography.highlight-small}`.
- Media: optional illustration, image, or video slot uses `{rounded.media}`; media can be edge-aligned or omitted for text-only variants.
- Shape: container `{rounded.container}`, pressed/tapped container `{rounded.container-pressed}`.
- Stroke: no default stroke; use `{strokes.stroke-elevated}` only when the banner sits as an outlined or elevated surface.
- Layout: internal padding `{spacing.sm}`, compact content gap `{spacing.xs}`, tight icon/text gap `{spacing.xxs}`, full-width placement uses horizontal page padding `{spacing.sm}`.

### Sleeve Banners

**`sleeve-banner`** — Slim promotional or informational banner that sits behind, above, or below a card surface. Used for compact messages with leading icon, label, and optional trailing info affordance. Available in default, Pro primary, and Pro subtle variants, with small/base and text/highlight typography options.
- Default: background `{colors.interaction.secondary}`, pressed background `{colors.interaction.secondary-hover}`, text `{colors.neutral.white}`, icon `{colors.neutral.white}`.
- Pro primary: background `{colors.pro.pro-gradient-start}` → `{colors.pro.pro-gradient-end}` or `{colors.pro.pro-deal-highlight-4}`, pressed background `{colors.pro.pro-primary}`, text `{colors.neutral.white}`, icon `{colors.neutral.white}`.
- Pro subtle: background `{colors.pro.pro-deal-highlight-1}`, pressed background `{colors.pro.pro-deal-highlight-2}`, text `{colors.pro.on-pro-highlight}`, icon `{colors.pro.on-pro-highlight}`.
- Typography: small text `{typography.body-small}`, small highlight `{typography.highlight-small}`, base text `{typography.body-base}`, base highlight `{typography.highlight-base}`.
- Shape: container `{rounded.container-edge}` when attached behind a card; use `{rounded.container}` when displayed as a standalone sleeve.
- Stroke: no default stroke; trailing info icon uses `{strokes.stroke-icon}`.
- Layout: horizontal padding `{spacing.sm}`, vertical padding `{spacing.xs}`, icon-to-text gap `{spacing.xxs}`, trailing icon aligned to the end with content gap `{spacing.xs}`.

### Quantity Steppers

**`quantity-stepper`** — Quantity control used to add, remove, or adjust item count. Supports add-only, decrement/increment, delete/increment, count badge, contained pill, split controls, and elevated/non-elevated variants.
- Container: background `{colors.neutral.white}`, border `{colors.interaction.secondary-border}`, stroke `{strokes.stroke-interactive}`, shape `{rounded.pill}` for contained steppers and `{rounded.circle}` for single action buttons or count badges.
- Elevated: `true` applies low elevation for floating controls over media or dark surfaces; `false` uses the same surface and border without shadow.
- Icons: add, minus, and delete icons use `{colors.neutral.primary}` with stroke `{strokes.stroke-icon}`.
- Count label: text `{colors.neutral.primary}`, type `{typography.highlight-base}`; compact count uses `{typography.highlight-small}`.
- Count badge: background `{colors.interaction.secondary-selected}`, text `{colors.neutral.white}`, border `{colors.interaction.secondary-border}`, shape `{rounded.circle}`.
- Add-only state: circular button with background `{colors.neutral.white}`, icon `{colors.neutral.primary}`, border `{colors.interaction.secondary-border}`.
- Quantity `1` state: delete action replaces decrement action, with count label between delete and add actions.
- Quantity `2+` state: minus action replaces delete action, with count label between minus and add actions.
- Split variant: actions render as separate circular buttons with transparent spacing between controls; count remains text-only using `{colors.neutral.primary}`.
- Layout: horizontal padding `{spacing.xs}` for contained steppers, action-to-count gap `{spacing.xs}`, compact internal gap `{spacing.xxs}`.

### Search

**`search-input`** — Search field used for keyword entry in discovery, filtering, and browsing surfaces. Supports labelled and empty states, with icon-leading layout and pill-shaped container treatment.
- Default: background `{colors.neutral.surface}`, icon `{colors.neutral.secondary}`, placeholder text `{colors.neutral.secondary}`, type `{typography.body-base}`
- Reversed / elevated surface: background `{colors.neutral.white}`, icon `{colors.neutral.secondary}`, placeholder text `{colors.neutral.secondary}`, type `{typography.body-base}`
- Focus state: focus ring `{colors.interaction.focus}`, stroke `{strokes.stroke-input-focus}`
- Shape `{rounded.pill}`
- Layout: horizontal padding `{spacing.sm}`, vertical padding `{spacing.xs}`, icon-to-text gap `{spacing.xs}`

### Radio Buttons

**`radio-button`** — Single-select control used when users must choose one option from a mutually exclusive set. Supports icon-only and labelled variants, with unselected, selected, and disabled states.
- Global: shape `{rounded.circle}`, border stroke `{strokes.stroke-interactive}`, inner selected indicator shape `{rounded.circle}`
- Labelled variant: label `{colors.neutral.primary}`, label type `{typography.title-large}`, radio-to-label gap `{spacing.sm}`
- Unselected: background `{colors.neutral.white}`, border `{colors.interaction.secondary-border}`
- Selected: outer fill `{colors.neutral.primary}`, inner indicator `{colors.neutral.white}`
- Disabled unselected: background `{colors.neutral.white}`, border `{colors.neutral.inactive}`, label `{colors.neutral.inactive}`
- Disabled selected: outer fill `{colors.neutral.inactive}`, inner indicator `{colors.neutral.white}`, label `{colors.neutral.inactive}`

### Switches

**Global properties** — Shared structure for the switch/search-style control across label, stroke, and interaction variants. Used when users need a compact pill-shaped control with leading icon and optional dynamic label behaviour.
- Shape `{rounded.pill}`, icon `{colors.neutral.secondary}`, icon stroke `{strokes.stroke-icon}`, label `{colors.neutral.secondary}`, label type `{typography.body-base}`.
- Layout: horizontal padding `{spacing.sm}`, vertical padding `{spacing.xs}`, icon-to-label gap `{spacing.xs}`.
- Leading icon: search icon uses `{colors.neutral.secondary}` across all variants.
- Dynamic label: `none` shows fixed label, `as-a-whole` updates the full label at once, `letter-by-letter` updates the label progressively.

**`switch-default`** — Default pill control without visible stroke. Used for low-emphasis selection or search-style input surfaces on standard backgrounds.
- Default: background `{colors.neutral.surface}`, text `{colors.neutral.secondary}`, icon `{colors.neutral.secondary}`.
- Pressed: background `{colors.neutral.divider}`, text `{colors.neutral.secondary}`, icon `{colors.neutral.secondary}`.

**`switch-stroked`** — Stroked pill control used when the component needs stronger separation from the surrounding surface.
- Default: background `{colors.neutral.white}`, border `{colors.interaction.secondary-border}`, stroke `{strokes.stroke-input}`, text `{colors.neutral.secondary}`, icon `{colors.neutral.secondary}`.
- Pressed: background `{colors.neutral.white}`, border `{colors.interaction.secondary-border}`, stroke `{strokes.stroke-input}`, text `{colors.neutral.secondary}`, icon `{colors.neutral.secondary}`.

**`switch-dynamic-label`** — Dynamic label variant used when the control label changes after interaction or reflects active input behaviour.
- As a whole: label updates as one complete string, using `{typography.body-base}` and `{colors.neutral.secondary}`.
- Letter by letter: label updates progressively, using `{typography.body-base}` and `{colors.neutral.secondary}`.
- Empty state: icon-only visual state keeps leading icon `{colors.neutral.secondary}` with the same container treatment as the parent variant.

### Snackbars

**`snackbar`** — Temporary feedback message shown near the bottom of the screen to confirm an action, surface a status, or provide contextual feedback. Supports single-line or multi-line content, optional leading icon, and optional CTA.
- Surface background `{colors.neutral.primary}`, text `{colors.neutral.white}`, shape `{rounded.container}`, type `{typography.body-base}`
- Icon: optional leading icon uses `{colors.neutral.white}` with stroke `{strokes.stroke-icon}`
- CTA: optional outlined action uses text `{colors.neutral.white}`, border `{colors.neutral.white}`, stroke `{strokes.stroke-interactive}`, type `{typography.highlight-base}`, rounded `{rounded.button}`
- Layout: horizontal padding `{spacing.sm}`, vertical padding `{spacing.st}`, icon-to-text gap `{spacing.sm}`, text-to-CTA gap `{spacing.sm}`; multi-line content expands vertically while keeping CTA aligned to the trailing or bottom-trailing edge.

### Tabs

**`tab`** — Navigation control for switching between related content views. Supports text-only or icon-leading tabs, fixed or horizontally scrollable layouts, and default or reversed treatments for light and dark surfaces.
- Default: selected text `{colors.neutral.primary}`, active text `{colors.neutral.secondary}`, indicator `{colors.neutral.primary}`, type `{typography.highlight-base}`
- Reversed: selected text `{colors.neutral.white}`, active text `{colors.neutral.white}`, indicator `{colors.neutral.white}`, type `{typography.highlight-base}`
- With icon: icon inherits selected or active text colour, icon stroke `{strokes.stroke-icon}`, icon-to-label gap `{spacing.xxs}`
- Indicator uses stroke `{strokes.stroke-navigation}` and shape `{rounded.pill}`
- Layout: tab items can be distributed evenly or horizontally scrollable; use horizontal padding `{spacing.sm}`, vertical padding `{spacing.xs}`, and label-to-indicator spacing `{spacing.xxs}`

### Tags

**`tag`** — Compact label used to identify, group, or categorise items. Supports default, small, and extra-small sizes, with optional leading icon. Use default tags for higher-emphasis labels or when placed beside 24px-height components; use small tags as the standard compact label; use extra-small tags in dense cards, tiles, inline metadata, or constrained layouts.
- Global: shape `{rounded.pill}`, icon stroke `{strokes.stroke-icon}`, icon-to-label gap `{spacing.xxxs}` or `{spacing.xxs}`
- Default size: use for primary/focal tags, larger cards, or tags near 24px-height UI; label type `{typography.highlight-small}`, horizontal padding `{spacing.xs}`
- Small size: default tag size for most product UI; label type `{typography.highlight-xsmall}`, horizontal padding `{spacing.xxs}`
- Extra-small size: use in dense spaces such as product tiles, item cards, compact metadata, or inline tag rows; label type `{typography.highlight-xsmall}`, compact padding `{spacing.xxxs}` / `{spacing.xxs}`
- Primary: background `{colors.tag.tag-primary-background}`, text `{colors.tag.tag-primary-text}`, icon `{colors.tag.tag-primary-text}`
- Deal: background `{colors.tag.tag-deal-background}`, text `{colors.tag.tag-deal-text}`, icon `{colors.tag.tag-deal-text}`
- Secondary: background `{colors.tag.tag-secondary-background}`, text `{colors.tag.tag-secondary-text}`, icon `{colors.tag.tag-secondary-text}`
- Popular: background `{colors.tag.popular-highlight}`, text `{colors.tag.popular-tag-text}`, icon `{colors.tag.popular-tag-icon}`
- Inactive: background `{colors.neutral.surface}`, text `{colors.neutral.inactive}`, icon `{colors.neutral.inactive}`
- Neutral secondary: background `{colors.neutral.surface}`, text `{colors.neutral.secondary}`, icon `{colors.neutral.secondary}`
- Neutral primary: background `{colors.neutral.primary}`, text `{colors.neutral.white}`, icon `{colors.neutral.white}`
- Disclosure: background `{colors.neutral.secondary}`, text `{colors.neutral.white}`, icon `{colors.neutral.white}`
- Information: background `{colors.system.information-highlight}`, text `{colors.system.information}`, icon `{colors.system.information}`
- Error: background `{colors.system.error-highlight}`, text `{colors.system.error}`, icon `{colors.system.error}`
- Success: background `{colors.system.success}`, text `{colors.tag.tag-success-text}`, icon `{colors.tag.tag-success-text}`
- Pro: background `{colors.pro.pro-deal-highlight-4}`, text `{colors.neutral.white}`, icon `{colors.neutral.white}`
- Pro light: background `{colors.pro.pro-deal-highlight-1}`, text `{colors.pro.on-pro-highlight}`, icon `{colors.pro.on-pro-highlight}`

**`rating`** — Inline rating indicator used to show score and optional rating count. Use beside restaurant, vendor, product, or review metadata where rating needs to be compact and readable.
- Icon `{colors.rating.ratings-rating}`, text `{colors.neutral.primary}`, secondary count text `{colors.neutral.secondary}`
- Primary rating value type `{typography.highlight-xsmall}` or `{typography.highlight-small}` depending on size
- Rating count type `{typography.body-xsmall}` or `{typography.body-small}` depending on size
- Layout: icon-to-text gap `{spacing.xxxs}`, optional value-to-count gap `{spacing.xxxs}`

**`dietary-tag`** — Dietary attribute label used to mark vegan, vegetarian, spicy, or kids meal options. Supports icon-only and icon-with-text variants across small and medium sizes.
- Global: shape `{rounded.pill}`, icon stroke `{strokes.stroke-icon}`, icon-to-label gap `{spacing.xxxs}`, label type `{typography.highlight-xsmall}`
- Icon-only small: compact dietary indicator for dense metadata rows or constrained card layouts
- Icon-only medium: larger dietary indicator where the icon needs stronger visibility
- Text variant: use when the dietary meaning must be explicit, such as menu item metadata or filterable attributes
- Vegan: background `{colors.tag.tag-dietary-vegan-background}`, text `{colors.tag.tag-dietary-vegan}`, icon `{colors.tag.tag-dietary-vegan}`
- Vegetarian: background `{colors.tag.tag-dietary-vegetarian-background}`, text `{colors.tag.tag-dietary-vegetarian}`, icon `{colors.tag.tag-dietary-vegetarian}`
- Spicy: background `{colors.tag.tag-dietary-spicy-background}`, text `{colors.tag.tag-dietary-spicy}`, icon `{colors.tag.tag-dietary-spicy}`
- Kids meal: background `{colors.tag.tag-dietary-kids-background}`, text `{colors.tag.tag-dietary-kids}`, icon `{colors.tag.tag-dietary-kids}`

**`brand-tag`** — Logo-based pill used to display one or more partner, brand, or benefit logos inside a compact tag. Supports loading and loaded states, with 1–4 logos.
- Global: background `{colors.neutral.white}`, border `{colors.neutral.divider}`, stroke `{strokes.stroke-interactive-subtle}`, shape `{rounded.pill}`
- Loaded state: logo content sits inside the pill with compact horizontal spacing `{spacing.xxs}`
- Loading state: skeleton background `{colors.neutral.surface}`, skeleton mark `{colors.neutral.inactive}`
- Multi-logo variant: repeated logo marks use compact internal spacing `{spacing.xxxs}` or `{spacing.xxs}`

**`transparent-tag`** — Surface-free metadata tag used when the label should read as inline supporting information instead of a visible pill. Best for low-emphasis metadata rows or contexts where a filled tag would add visual noise.
- Background `{colors.neutral.transparent}`, text `{colors.neutral.primary}`, icon `{colors.neutral.primary}`, type `{typography.body-xsmall}` or `{typography.body-small}`
- Layout: icon-to-label gap `{spacing.xxxs}`, no container border or fill

### Tooltips

**`tooltip`** — Contextual overlay used to explain an element, provide short guidance, or clarify an interaction without changing the page state. Supports top, bottom, left, right, and edge-aligned pointer positions.
- Surface background `{colors.system.information}`, text `{colors.neutral.white}`, type `{typography.highlight-base}`, shape `{rounded.overlay}`
- Pointer uses the same background `{colors.system.information}` and should align to the triggering element.
- Layout: horizontal padding `{spacing.sm}`, vertical padding `{spacing.xs}`, text-to-edge spacing follows compact overlay rhythm using `{spacing.xs}` or `{spacing.sm}`.

### Vendor List

**`vendor-tile`** — Restaurant or shop listing tile used to preview a vendor in discovery surfaces such as home, search, category, cuisine, and vendor lists. It combines vendor media, branding, rating, delivery metadata, sponsored treatment, subscription benefit messaging, and deal tags.
- Media: image uses `{rounded.media}`; favourite action uses background `{colors.neutral.white}`, icon `{colors.neutral.primary}`, shape `{rounded.circle}`, stroke `{strokes.stroke-icon}`
- Vendor logo: background `{colors.neutral.white}`, border `{colors.neutral.divider}`, shape `{rounded.container}`
- Title: text `{colors.neutral.primary}`, type `{typography.title-small}`
- Metadata: text `{colors.neutral.secondary}`, type `{typography.body-base}`; metadata separators use `{colors.neutral.secondary}`
- Rating: rating icon `{colors.rating.ratings-rating}`, rating text `{colors.neutral.primary}`, type `{typography.highlight-base}`
- Delivery fee / supporting metadata: text `{colors.neutral.secondary}`, type `{typography.body-base}`
- Sponsored label: background `{colors.overlay.dark-64}`, text `{colors.neutral.white}`, shape `{rounded.mini}`, type `{typography.highlight-small}`
- Pro benefit banner: background `{colors.pro.pro-deal-highlight-1}`, text/icon `{colors.pro.pro-primary}`, type `{typography.highlight-base}`; compact `+1` indicator uses background `{colors.pro.pro-deal-highlight-2}`, text `{colors.pro.pro-primary}`, shape `{rounded.circle}`
- Deal tags: background `{colors.deal.deal-highlight-lvl2}`, text/icon `{colors.deal.text-on-white}`, shape `{rounded.pill}`, type `{typography.highlight-base}`
- Pro deal tag: background `{colors.pro.pro-deal-highlight-1}`, text/icon `{colors.pro.pro-primary}`, shape `{rounded.pill}`, type `{typography.highlight-base}`
- Layout: image-to-content gap `{spacing.xs}`, title-to-metadata gap `{spacing.xxs}`, content-to-tag gap `{spacing.st}`, tag internal padding `{spacing.xxs} {spacing.st}`, tag gap `{spacing.xxs}`

### Vendor Tiles

**`vendor-tile`** — Restaurant or shop listing tile used to preview a vendor in discovery surfaces such as home, search, category, cuisine, and vendor lists. It combines vendor media, branding, rating, delivery metadata, sponsored treatment, subscription benefit messaging, and deal tags.
- Media: image uses `{rounded.media}`; favourite action uses background `{colors.neutral.white}`, icon `{colors.neutral.primary}`, shape `{rounded.circle}`, stroke `{strokes.stroke-icon}`
- Vendor logo: background `{colors.neutral.white}`, border `{colors.neutral.divider}`, shape `{rounded.container}`
- Title: text `{colors.neutral.primary}`, type `{typography.title-small}`
- Metadata: text `{colors.neutral.secondary}`, type `{typography.body-base}`; metadata separators use `{colors.neutral.secondary}`
- Rating: rating icon `{colors.rating.ratings-rating}`, rating text `{colors.neutral.primary}`, type `{typography.highlight-base}`
- Delivery fee / supporting metadata: text `{colors.neutral.secondary}`, type `{typography.body-base}`
- Sponsored label: background `{colors.overlay.dark-64}`, text `{colors.neutral.white}`, shape `{rounded.mini}`, type `{typography.highlight-small}`
- Pro benefit banner: background `{colors.pro.pro-deal-highlight-1}`, text/icon `{colors.pro.pro-primary}`, type `{typography.highlight-base}`; compact `+1` indicator uses background `{colors.pro.pro-deal-highlight-2}`, text `{colors.pro.pro-primary}`, shape `{rounded.circle}`
- Deal tags: background `{colors.deal.deal-highlight-lvl2}`, text/icon `{colors.deal.text-on-white}`, shape `{rounded.pill}`, type `{typography.highlight-base}`
- Pro deal tag: background `{colors.pro.pro-deal-highlight-1}`, text/icon `{colors.pro.pro-primary}`, shape `{rounded.pill}`, type `{typography.highlight-base}`
- Layout: image-to-content gap `{spacing.xs}`, title-to-metadata gap `{spacing.xxs}`, content-to-tag gap `{spacing.st}`, tag internal padding `{spacing.xxs} {spacing.st}`, tag gap `{spacing.xxs}`

### Walkthrough

**`walkthrough`** — Guided overlay card used to introduce a feature, explain a UI element, or step users through contextual education. Supports top or bottom pointer placement, left/center/right pointer alignment, close action, primary CTA, and optional step count.
- Container: background `{colors.neutral.white}`, text `{colors.neutral.primary}`, shape `{rounded.overlay}`, elevation `High`.
- Title: text `{colors.neutral.primary}`, type `{typography.title-small}`.
- Body: text `{colors.neutral.primary}`, type `{typography.body-base}`.
- Close icon: icon `{colors.neutral.primary}`, stroke `{strokes.stroke-icon}`.
- CTA: background `{colors.interaction.primary}`, text `{colors.neutral.white}`, shape `{rounded.button}`, type `{typography.highlight-base}`.
- Step count: text `{colors.neutral.secondary}`, type `{typography.body-small}`.
- Pointer: uses container background `{colors.neutral.white}` and can be positioned top-left, top-center, top-right, bottom-left, bottom-center, or bottom-right.
- Layout: internal padding `{spacing.sm}`, title-to-body gap `{spacing.xs}`, body-to-footer gap `{spacing.sm}`, CTA aligned to end with footer spacing `{spacing.sm}`.