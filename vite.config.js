import { defineConfig } from "vite"
import tailwindcss from "@tailwindcss/vite"

export default defineConfig({
	// Configure build options for static site generation
	build: {
		// Specify the output directory for the built files
		outDir: "dist",
		// Clear the output directory before building
		emptyOutDir: true,
	},
	base: "/",
	plugins: [tailwindcss()],
})
