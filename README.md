# Automa Solutions Website

AI Agent Development Agency website built with Tailwind CSS and deployed to Cloudflare Pages.

## Structure

```
.
├── dist/               # Built files (deployed to Cloudflare)
│   ├── index.html      # Homepage
│   ├── services.html   # Services page
│   ├── contact.html    # Contact page
│   └── output.css      # Compiled Tailwind CSS
├── src/
│   └── input.css       # Tailwind source
├── tailwind.config.js  # Tailwind configuration
└── package.json        # Dependencies
```

## Development

```bash
# Install dependencies
npm install

# Watch for changes (auto-rebuild CSS)
npm run watch

# Build for production
npm run build

# Serve locally
npm run dev
```

## Deployment

This site is deployed to Cloudflare Pages via GitHub integration.

### Setup Steps:

1. Push this repo to GitHub
2. Connect to Cloudflare Pages
3. Build command: `npm run build`
4. Build output: `dist`

## Domain

Primary: automatalabs.com (configure in Cloudflare)

## Contact

For updates contact: hello@automatalabs.com
