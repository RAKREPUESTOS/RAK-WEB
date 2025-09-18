# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a static website for "Rak Repuestos", an auto parts company based in Argentina. The site is a single-page application built with vanilla HTML, CSS, and Tailwind CSS.

## Architecture & Structure

### Technology Stack
- **Frontend**: Vanilla HTML with embedded Tailwind CSS (via CDN)
- **Styling**: Tailwind CSS + custom CSS in `css/styles.css`
- **Fonts**: Space Grotesk and Noto Sans (Google Fonts)
- **Icons**: Font Awesome 5.15.4
- **Form handling**: Formspree integration for contact form

### File Structure
```
/
├── index.html              # Main website file
├── css/
│   └── styles.css         # Custom CSS styles and components
├── imagenes/              # All website images and assets
│   ├── NUESTROS PRODUCTOS/ # Product category images
│   ├── LOGOS/             # Brand logos
│   └── RAK LOGO EN GRANDE.png # Hero background image
├── RAK REPUESTOS CATALOGO.pdf/ # Product catalog
└── README.md              # Basic project info
```

### Key Components

1. **Header**: Sticky navigation with company logo and menu links
2. **Hero Section**: Background image with company branding
3. **Services Section**: 4-card grid showcasing company services
4. **Products Section**: 8-card grid displaying product categories
5. **About Section**: Company information and mission
6. **Location Section**: Google Maps integration
7. **Contact Section**: Contact form with Formspree integration
8. **Brands Section**: Partner brand logos showcase
9. **Footer**: Company info, quick links, and social media

### Styling Approach
- Uses Tailwind CSS utility classes for most styling
- Custom CSS in `css/styles.css` for:
  - Component-specific styles (floating buttons, carousels)
  - Hover effects and transitions
  - Responsive design adjustments
  - Brand-specific styling

## Development Commands

This is a static website with no build process. To work with this project:

### Local Development
```bash
# Serve the website locally (any static server)
python -m http.server 8000
# or
npx serve .
# or open index.html directly in a browser
```

### No Build/Test Commands
- No package.json or build tools
- No testing framework
- No linting configuration
- Changes are immediate - just refresh the browser

## Important Notes

### Contact Form
- Uses Formspree (https://formspree.io/f/xqallaod) for form submissions
- Form fields: name, email, message
- Contact details: Phone/WhatsApp: +54 9 3834 33-5231, Email: rakrepuestos@gmail.com

### Image Dependencies
- Hero background uses relative path: `imagenes/RAK LOGO EN GRANDE.png`
- Product images in `imagenes/NUESTROS PRODUCTOS/`
- Brand logos in `imagenes/LOGOS/`
- Floating buttons use external WhatsApp icon and local Instagram icon

### External Dependencies
- Tailwind CSS via CDN
- Google Fonts (Space Grotesk, Noto Sans)
- Font Awesome icons
- Google Maps embed for location

### Social Media Integration
- WhatsApp floating button: +54 9 3834 33-5231
- Instagram floating button: @rak.repuestos
- Both buttons have hover animations and responsive sizing

## Responsive Design
- Mobile-first approach with Tailwind responsive utilities
- Custom media queries in CSS for floating buttons and carousel
- Responsive grid layouts for services and products sections