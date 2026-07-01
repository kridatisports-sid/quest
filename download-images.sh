#!/bin/bash
# Run this on YOUR machine (not in this sandbox) — creates images/ folder
# next to the HTML file and downloads everything at the correct filenames.

mkdir -p images

curl -sL "https://images.unsplash.com/photo-1493106819501-66d381c466f1?auto=format&fit=crop&w=1400&q=82" -o images/pottery-detail.jpg
curl -sL "https://images.unsplash.com/photo-1493106819501-66d381c466f1?auto=format&fit=crop&w=900&q=82"  -o images/pottery-card.jpg
curl -sL "https://images.unsplash.com/photo-1506126613408-eca07ce68773?auto=format&fit=crop&w=900&q=82"  -o images/breathwork.jpg
curl -sL "https://images.unsplash.com/photo-1509440159596-0249088772ff?auto=format&fit=crop&w=900&q=82"  -o images/sourdough.jpg
curl -sL "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=900&q=82"  -o images/photo-walk.jpg
curl -sL "https://images.unsplash.com/photo-1459156212016-c812468e2115?auto=format&fit=crop&w=900&q=82"  -o images/terrarium.jpg
curl -sL "https://images.unsplash.com/photo-1521737604893-d14cc237f11d?auto=format&fit=crop&w=900&q=82"  -o images/design-studio.jpg
curl -sL "https://images.unsplash.com/photo-1545205597-3d9d02c29597?auto=format&fit=crop&w=900&q=82"     -o images/yoga-studio.jpg
curl -sL "https://images.unsplash.com/photo-1556761175-b413da4baf72?auto=format&fit=crop&w=900&q=82"     -o images/community-workshop.jpg
curl -sL "https://images.unsplash.com/photo-1529156069898-49953e39b3ac?auto=format&fit=crop&w=1600&q=82" -o images/hero-bg.jpg

echo "Done. 10 files should now be in ./images/"
ls -la images/
