#!/bin/bash
# GitHub Setup Script for Automa Solutions Website

echo "🚀 Setting up GitHub repository for Automa Solutions..."
echo ""

# Check if git is configured
if [ -z "$(git config user.email)" ]; then
    echo "⚠️  Git user email not set"
    echo "Run: git config --global user.email 'you@example.com'"
    exit 1
fi

if [ -z "$(git config user.name)" ]; then
    echo "⚠️  Git user name not set"
    echo "Run: git config --global user.name 'Your Name'"
    exit 1
fi

echo "✅ Git configured: $(git config user.name) <$(git config user.email)>"
echo ""

# Create GitHub repo via API (requires token)
if [ -z "$GITHUB_TOKEN" ]; then
    echo "ℹ️  GITHUB_TOKEN not set. Manual setup required."
    echo ""
    echo "MANUAL SETUP STEPS:"
    echo ""
    echo "1. Go to: https://github.com/new"
    echo "2. Repository name: automa-solutions-website"
    echo "3. Make it: Public (or Private if you prefer)"
    echo "4. Do NOT initialize with README (we have one)"
    echo "5. Click 'Create repository'"
    echo ""
    echo "6. Then run these commands:"
    echo ""
    echo "   git remote add origin https://github.com/YOUR_USERNAME/automa-solutions-website.git"
    echo "   git branch -M main"
    echo "   git push -u origin main"
    echo ""
else
    echo "✅ GITHUB_TOKEN found, creating repo via API..."
    
    # Create repo using GitHub API
    curl -H "Authorization: token $GITHUB_TOKEN" \
         -H "Accept: application/vnd.github.v3+json" \
         -d '{"name":"automa-solutions-website","private":false}' \
         https://api.github.com/user/repos
    
    echo ""
    echo "✅ Repository created!"
    echo "Now pushing code..."
    
    git remote add origin https://github.com/$GITHUB_USERNAME/automa-solutions-website.git
    git branch -M main
    git push -u origin main
    
    echo ""
    echo "🎉 Done! Repository is live at:"
    echo "https://github.com/$GITHUB_USERNAME/automa-solutions-website"
fi

