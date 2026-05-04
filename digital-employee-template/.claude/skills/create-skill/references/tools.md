# Available Tools & Integrations

Use these tools when building skills. Match the tool to the task — don't force integrations where they're not needed.

---

## Analytics & Social Media Data

### Metricool (MCP Server)
**What it does:** Full Instagram analytics, post scheduling, competitor research, and performance tracking.
**When to use it:** Any skill that needs social media metrics, posting schedules, competitor analysis, or content performance data.
**Integration:** MCP server — available as native tool calls when configured.
**Key capabilities:**
- `get_brands` — List connected social accounts
- `get_analytics` — Pull engagement, reach, follower data for any date range
- `get_instagram_reels` — Get reel performance metrics (views, likes, shares, saves)
- `post_schedule_post` — Schedule posts with images, captions, and hashtags
- `get_best_time_to_post` — Algorithm-recommended posting times based on audience activity
- `get_network_competitors` — Pull competitor account metrics and content
- `get_scheduled_posts` — View upcoming scheduled content
- `update_schedule_post` — Modify already-scheduled posts
**Setup:** Requires `METRICOOL_USER_TOKEN` and `METRICOOL_USER_ID` in MCP config. Free tier available.
**Best for:** Social media reporting skills, content calendar skills, competitor tracking skills.

---

## Content Research & Web Scraping

### ScrapeCreators API
**What it does:** Scrapes Instagram reels, profiles, and social content for research, voice analysis, and competitor study.
**When to use it:** Any skill that needs to analyze what's working on social media — hooks, formats, styles, trends. Also great for cloning a creator's voice or studying their content strategy.
**Integration:** REST API via `SCRAPECREATORS_API_KEY`.
**Key capabilities:**
- Search reels by topic or hashtag
- Scrape a specific creator's recent content
- Pull transcripts, captions, engagement metrics
- Analyze content patterns and hooks
**Setup:** 100 free credits on signup. API key in `.env`.
**Best for:** Content research skills, voice cloning skills, competitor analysis skills, trend spotting.
**API docs:** scrapecreators.com

### Tavily API
**What it does:** Advanced web search with structured results. Especially good for finding images with descriptions and doing deep content research.
**When to use it:** When a skill needs to find specific images, research a topic in depth, or pull current information from the web.
**Integration:** REST API via `TAVILY_API_KEY`.
**Key capabilities:**
- Web search with relevance ranking
- Image search with alt-text descriptions
- Domain filtering (search only specific sites)
- Content extraction from URLs
**Setup:** API key in `.env`.
**Best for:** Image sourcing skills, research skills, content curation skills, any skill that needs current web data.

### WebSearch (Built-in)
**What it does:** General web search available natively in Claude Code.
**When to use it:** Quick research, finding frameworks, checking competitors, looking up current trends or best practices.
**Integration:** Built-in tool — no API key needed.
**Key capabilities:**
- Search any topic
- Filter by domain
- Find recent content
**Best for:** Research steps in any skill. Use this as the default for web research unless you specifically need Tavily's image search or structured results.

---

## Image Generation

### Gemini / Nano Banana 2 (Google)
**What it does:** AI image generation for marketing visuals, social media graphics, thumbnails, carousel slides, and diagrams.
**When to use it:** Any skill that produces visual content — social posts with images, carousel slides, thumbnails, presentation graphics, marketing materials.
**Integration:** API via `GEMINI_API_KEY`. Often used through Python generation scripts.
**Key capabilities:**
- Generate images from text prompts
- Style control (photorealistic, illustrated, hand-drawn, corporate, playful)
- Consistent branding across multiple generated images
- Batch generation (generate 4+ variations in parallel)
- "Nano Banana Pro" style — hand-drawn conceptual diagrams with warm pastel palette, colored arrows, badges, mascots, and confetti. Great for educational/explainer content.
**Prompt tips:**
- Be specific about composition: "top-third text area, bottom person looking up"
- Specify style explicitly: "clean flat illustration, no gradients, bold colors"
- Include negative prompts: "no watermarks, no text artifacts, no distortion"
- Reference specific aesthetics: "Apple keynote style", "Notion-clean", "hand-drawn whiteboard"
**Setup:** API key in `.env`.
**Best for:** Carousel skills, thumbnail skills, social media content skills, presentation skills, any visual content.

### Higgsfield Soul API
**What it does:** Generate photorealistic, cinematic-quality images. Particularly strong at stylistic product shots, lifestyle imagery, and images featuring real people in aspirational settings.
**When to use it:** When you need premium, photorealistic visuals — not illustrations or diagrams. Think: hero images for landing pages, lifestyle shots for ads, product photography, professional headshots, cinematic scenes.
**Integration:** API via `HIGGSFIELD_API_ID` and `HIGGSFIELD_API_SECRET`.
**Key capabilities:**
- Photorealistic human images (presenter shots, lifestyle photos)
- Product photography and mockups
- Cinematic lighting and composition
- Consistent character across multiple generations (same person, different scenes)
- Style transfer (apply a visual style to a concept)
**Best for:** Landing page hero images, ad creatives, webinar presenter shots, course thumbnails, any premium visual that needs to look "real" not "AI-generated."

### Giphy API
**What it does:** Search and embed GIFs.
**When to use it:** When a skill produces content that benefits from animated elements — carousel slides, presentations, social posts with embedded GIFs.
**Integration:** API via `GIPHY_API_KEY`.
**Best for:** Carousel skills, presentation skills, any content that benefits from animated visuals.

---

## Video Generation

### Higgsfield (Video)
**What it does:** Generate short-form video content, cinematic transitions, and stylized video clips from text or image prompts.
**When to use it:** When a skill needs video assets — intro clips, b-roll, transitions, product demos, social video content.
**Integration:** Same API as Higgsfield Soul (image) — `HIGGSFIELD_API_ID` and `HIGGSFIELD_API_SECRET`.
**Key capabilities:**
- Text-to-video generation
- Image-to-video animation (bring a still image to life)
- Cinematic camera movements (dolly, pan, zoom)
- Style-consistent video series
**Best for:** Reel intro clips, ad creative video, course promo videos, product showcase animations.

## DM & Chat Automation

### ManyChat
**What it does:** Automate Instagram DM conversations, lead capture flows, and response sequences.
**When to use it:** Any skill that involves DM strategy, lead magnet delivery, or automated chat sequences.
**Integration:** External platform — connected to Instagram directly. Skills can design the flows, but ManyChat executes them.
**Key capabilities:**
- Automated DM responses triggered by keywords or comments
- Multi-step conversation flows
- Lead capture and tagging
- Integration with email lists and CRMs
**Best for:** Lead magnet delivery skills, DM strategy skills, engagement automation skills. Note: Skills design the flow/copy, ManyChat implements it.

---

## Hosting & Deployment

### Vercel
**What it does:** One-click deployment for web apps, landing pages, and any Next.js project.
**When to use it:** Any skill that produces a deployable web asset — landing pages, tools, dashboards, apps.
**Integration:** CLI or API via `VERCEL_TOKEN`.
**Key capabilities:**
- Deploy from terminal with `vercel` command
- Custom domains
- Automatic HTTPS
- Preview deployments for testing
**Best for:** App-building skills, landing page skills, any skill that produces something that needs to be live on the web.

### Supabase
**What it does:** Managed PostgreSQL database with auth, storage, and real-time subscriptions.
**When to use it:** Any skill that builds an app needing a database — forms that save data, dashboards that display data, tools that track things over time.
**Integration:** API via `SUPABASE_URL`, `SUPABASE_ANON_KEY`, and `SUPABASE_SERVICE_ROLE_KEY`.
**Key capabilities:**
- PostgreSQL database (tables, queries, joins)
- User authentication (email, OAuth, magic links)
- File storage (images, documents, uploads)
- Real-time subscriptions (live updates)
- Row-level security (control who sees what)
**Best for:** App-building skills, dashboard skills, any skill that needs to store or retrieve data.

---

## Data Visualization & Diagrams

### Excalidraw
**What it does:** Create hand-drawn style diagrams, flowcharts, business maps, and visual planning documents.
**When to use it:** Any skill that benefits from visual output — strategy maps, funnel diagrams, process flows, org charts, system architecture.
**Integration:** Generate `.excalidraw` JSON files directly. Open in Excalidraw app or excalidraw.com.
**Key capabilities:**
- Hand-drawn aesthetic (roughness, Virgil font)
- Rectangles, arrows, text, ellipses, lines
- Color coding by category
- Exportable as PNG or SVG
**Style guide:**
- Use `roughness: 2` for hand-drawn feel
- Use `fontFamily: 3` (Virgil) for handwritten text
- Use dashed strokes (`strokeStyle: "dashed"`) for placeholder/fillable areas
- Color palette: Blue (#1971c2) for primary, Green (#2f9e44) for success/labels, Orange (#e8590c) for alerts, Gray (#868e96) for secondary text
**Best for:** Strategy skills, planning skills, any skill that maps out systems, processes, or ideas visually.

### Streamlit
**What it does:** Build interactive data dashboards with Python.
**When to use it:** Any skill that produces analytics, reports, or data that benefits from interactive charts and filters.
**Integration:** Python library — generate `.py` dashboard files that run with `streamlit run`.
**Key capabilities:**
- Interactive charts (line, bar, pie, scatter)
- KPI cards and metrics
- Data tables with sorting/filtering
- Dark theme support
**Style guide:**
- Dark background: `#0A0B12`
- Accent color: `#00CB5A` (green)
- Use `st.metric()` for KPI cards
- Use `st.columns()` for grid layouts
**Best for:** Analytics reporting skills, performance tracking skills, any skill that presents data visually.
