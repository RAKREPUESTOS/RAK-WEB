# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

RAK-WEB is a static website for RAK Repuestos, a vehicle parts and accessories company in Catamarca, Argentina. The site is built as a single-page HTML application using Vite as the build tool and TailwindCSS for styling.

## Development Commands

- `npm run dev` - Start the Vite development server
- `npm run build` - Build the production site to `dist/` directory
- `npm run preview` - Preview the built site locally

## Architecture

**Technology Stack:**
- **Build Tool:** Vite 5.x with ES modules
- **Styling:** TailwindCSS 4.x (via @tailwindcss/vite plugin)
- **Fonts:** Space Grotesk (headings) and Noto Sans (body text) from Google Fonts
- **Deployment:** Dockerized with Nginx (see Dockerfile and nginx.conf)

**Project Structure:**
- `index.html` - Main HTML file containing the entire website
- `src/css/styles.css` - Custom CSS with TailwindCSS imports and component styles
- `src/imagenes/` - Static assets including logos, product images, and social media icons
- `vite.config.js` - Vite configuration with TailwindCSS plugin
- `Dockerfile` - Multi-stage build for containerized deployment
- `nginx.conf` - Custom Nginx configuration for production

**Key Features:**
- Single-page website with SEO optimization (meta tags, Open Graph, geo-location)
- Responsive design using TailwindCSS utilities
- Custom font configuration (Space Grotesk for headings, Noto Sans for body)
- Image optimization with WebP format
- Static site generation optimized for Nginx deployment

The site uses a traditional HTML approach rather than a JavaScript framework, making it lightweight and SEO-friendly for the business's needs.