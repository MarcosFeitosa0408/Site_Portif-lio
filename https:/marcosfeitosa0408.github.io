<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Marcos Feitosa | Especialista em Dados</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;700;900&family=Exo+2:wght@300;400;500;600&display=swap" rel="stylesheet">

<style>
  :root {
    --bg-deep: #020510;
    --bg-mid: #050d1f;
    --bg-card: rgba(8, 20, 50, 0.7);
    --cyan: #00d4ff;
    --cyan-dim: rgba(0, 212, 255, 0.15);
    --cyan-glow: rgba(0, 212, 255, 0.4);
    --blue: #0a84ff;
    --purple: #7b2fff;
    --text-primary: #e8f4ff;
    --text-secondary: #7aa8cc;
    --border: rgba(0, 212, 255, 0.2);
    --font-display: 'Orbitron', monospace;
    --font-body: 'Exo 2', sans-serif;
  }

  *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

  html { scroll-behavior: smooth; }

  body {
    background-color: var(--bg-deep);
    color: var(--text-primary);
    font-family: var(--font-body);
    overflow-x: hidden;
    min-height: 100vh;
  }

  /* ─── STARFIELD ─── */
  #stars {
    position: fixed;
    top: 0; left: 0;
    width: 100%; height: 100%;
    pointer-events: none;
    z-index: 0;
    overflow: hidden;
  }
  .star {
    position: absolute;
    background: #fff;
    border-radius: 50%;
    animation: twinkle var(--d, 3s) ease-in-out infinite alternate;
  }
  @keyframes twinkle {
    from { opacity: 0.1; transform: scale(1); }
    to   { opacity: 0.9; transform: scale(1.3); }
  }

  /* ─── NAV ─── */
  nav {
    position: fixed;
    top: 0; width: 100%;
    z-index: 100;
    padding: 16px 40px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    background: rgba(2, 5, 16, 0.85);
    backdrop-filter: blur(12px);
    border-bottom: 1px solid var(--border);
  }
  .nav-logo {
    font-family: var(--font-display);
    font-size: 0.9rem;
    color: var(--cyan);
    letter-spacing: 3px;
    text-decoration: none;
  }
  .nav-links { display: flex; gap: 32px; list-style: none; }
  .nav-links a {
    color: var(--text-secondary);
    text-decoration: none;
    font-size: 0.8rem;
    letter-spacing: 2px;
    text-transform: uppercase;
    transition: color 0.3s;
  }
  .nav-links a:hover { color: var(--cyan); }

  /* ─── HERO ─── */
  .hero {
    position: relative;
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    padding: 120px 20px 80px;
    z-index: 1;
  }
  .hero::before {
    content: '';
    position: absolute;
    inset: 0;
    background:
      radial-gradient(ellipse 60% 50% at 50% 40%, rgba(0, 100, 200, 0.18) 0%, transparent 70%),
      radial-gradient(ellipse 40% 30% at 20% 80%, rgba(123, 47, 255, 0.12) 0%, transparent 60%);
    z-index: 0;
  }
  .hero-content {
    position: relative;
    z-index: 1;
    max-width: 760px;
    animation: fadeSlideUp 1s ease both;
  }
  @keyframes fadeSlideUp {
    from { opacity: 0; transform: translateY(40px); }
    to   { opacity: 1; transform: translateY(0); }
  }

  .profile-ring {
    width: 160px; height: 160px;
    margin: 0 auto 28px;
    position: relative;
  }
  .profile-ring::before {
    content: '';
    position: absolute;
    inset: -4px;
    border-radius: 50%;
    background: conic-gradient(var(--cyan), var(--blue), var(--purple), var(--cyan));
    animation: spin 6s linear infinite;
  }
  @keyframes spin { to { transform: rotate(360deg); } }
  .profile-ring::after {
    content: '';
    position: absolute;
    inset: -10px;
    border-radius: 50%;
    border: 1px solid rgba(0, 212, 255, 0.15);
    animation: spin 10s linear infinite reverse;
  }
  .profile-pic {
    width: 152px; height: 152px;
    border-radius: 50%;
    object-fit: cover;
    position: relative;
    z-index: 1;
    display: block;
    background: var(--bg-mid);
    border: 3px solid var(--bg-deep);
  }
  .profile-fallback {
    width: 152px; height: 152px;
    border-radius: 50%;
    background: linear-gradient(135deg, var(--bg-mid), #0a1a3a);
    display: flex; align-items: center; justify-content: center;
    font-size: 3rem;
    position: relative; z-index: 1;
    border: 3px solid var(--bg-deep);
  }

  .hero-tag {
    display: inline-block;
    font-size: 0.7rem;
    letter-spacing: 4px;
    color: var(--cyan);
    text-transform: uppercase;
    border: 1px solid var(--border);
    padding: 6px 16px;
    border-radius: 20px;
    margin-bottom: 20px;
    background: var(--cyan-dim);
  }

  h1.hero-title {
    font-family: var(--font-display);
    font-size: clamp(2rem, 6vw, 3.5rem);
    font-weight: 900;
    line-height: 1.1;
    margin-bottom: 16px;
    background: linear-gradient(135deg, #fff 0%, var(--cyan) 60%, var(--blue) 100%);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
  }

  .hero-subtitle {
    font-size: 1rem;
    color: var(--text-secondary);
    max-width: 500px;
    margin: 0 auto 12px;
    line-height: 1.7;
  }
  .hero-desc {
    font-size: 0.85rem;
    color: var(--text-secondary);
    max-width: 560px;
    margin: 0 auto 36px;
    line-height: 1.8;
    opacity: 0.8;
  }

  .cta-row {
    display: flex;
    gap: 16px;
    justify-content: center;
    flex-wrap: wrap;
  }
  .btn-primary {
    padding: 12px 28px;
    background: linear-gradient(135deg, var(--cyan), var(--blue));
    color: #000;
    border: none;
    border-radius: 30px;
    font-family: var(--font-body);
    font-weight: 600;
    font-size: 0.85rem;
    letter-spacing: 1px;
    cursor: pointer;
    text-decoration: none;
    transition: transform 0.2s, box-shadow 0.2s;
    box-shadow: 0 0 20px var(--cyan-glow);
  }
  .btn-primary:hover { transform: translateY(-2px); box-shadow: 0 0 35px var(--cyan-glow); }
  .btn-ghost {
    padding: 12px 28px;
    background: transparent;
    color: var(--cyan);
    border: 1px solid var(--border);
    border-radius: 30px;
    font-family: var(--font-body);
    font-weight: 500;
    font-size: 0.85rem;
    letter-spacing: 1px;
    cursor: pointer;
    text-decoration: none;
    transition: all 0.2s;
  }
  .btn-ghost:hover { background: var(--cyan-dim); border-color: var(--cyan); transform: translateY(-2px); }

  /* ─── SCROLL INDICATOR ─── */
  .scroll-hint {
    position: absolute;
    bottom: 32px;
    left: 50%;
    transform: translateX(-50%);
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 8px;
    color: var(--text-secondary);
    font-size: 0.65rem;
    letter-spacing: 3px;
    text-transform: uppercase;
    animation: bounce 2s ease-in-out infinite;
  }
  .scroll-line {
    width: 1px; height: 40px;
    background: linear-gradient(to bottom, var(--cyan), transparent);
  }
  @keyframes bounce {
    0%, 100% { transform: translateX(-50%) translateY(0); }
    50% { transform: translateX(-50%) translateY(8px); }
  }

  /* ─── SECTIONS ─── */
  section { position: relative; z-index: 1; padding: 80px 20px; }

  .section-header {
    text-align: center;
    margin-bottom: 60px;
  }
  .section-tag {
    font-size: 0.65rem;
    letter-spacing: 4px;
    color: var(--cyan);
    text-transform: uppercase;
    display: block;
    margin-bottom: 12px;
  }
  .section-title {
    font-family: var(--font-display);
    font-size: clamp(1.4rem, 4vw, 2rem);
    font-weight: 700;
    color: var(--text-primary);
    margin-bottom: 12px;
  }
  .section-line {
    width: 60px; height: 2px;
    background: linear-gradient(90deg, transparent, var(--cyan), transparent);
    margin: 0 auto;
  }

  /* ─── PROJECTS ─── */
  #projetos { max-width: 900px; margin: 0 auto; }

  .project-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
    gap: 20px;
  }

  .project-category {
    background: var(--bg-card);
    border: 1px solid var(--border);
    border-radius: 16px;
    overflow: visible;
    backdrop-filter: blur(10px);
    transition: border-color 0.3s, box-shadow 0.3s;
    animation: fadeSlideUp 0.8s ease both;
  }
  .project-category:hover {
    border-color: rgba(0, 212, 255, 0.5);
    box-shadow: 0 0 30px rgba(0, 212, 255, 0.08);
  }

  .cat-header {
    display: flex;
    align-items: center;
    gap: 12px;
    padding: 20px 24px 16px;
    cursor: pointer;
    user-select: none;
  }
  .cat-icon {
    font-size: 1.3rem;
    width: 40px; height: 40px;
    background: var(--cyan-dim);
    border: 1px solid var(--border);
    border-radius: 10px;
    display: flex; align-items: center; justify-content: center;
    flex-shrink: 0;
  }
  .cat-label {
    font-family: var(--font-display);
    font-size: 0.8rem;
    font-weight: 700;
    color: var(--text-primary);
    letter-spacing: 2px;
    flex: 1;
  }
  .cat-arrow {
    font-size: 0.7rem;
    color: var(--cyan);
    transition: transform 0.3s;
  }
  .cat-header.open .cat-arrow { transform: rotate(180deg); }

  .cat-submenu {
    display: none;
    padding: 0 16px 16px;
    display: flex;
    flex-direction: column;
    gap: 8px;
  }
  .cat-submenu.hidden { display: none; }

  .sub-btn {
    width: 100%;
    padding: 10px 16px;
    background: rgba(0, 212, 255, 0.05);
    border: 1px solid rgba(0, 212, 255, 0.12);
    border-radius: 8px;
    color: var(--text-secondary);
    font-family: var(--font-body);
    font-size: 0.8rem;
    cursor: pointer;
    text-align: left;
    transition: all 0.2s;
    position: relative;
    overflow: hidden;
  }
  .sub-btn::before {
    content: '';
    position: absolute;
    left: 0; top: 0; bottom: 0;
    width: 2px;
    background: var(--cyan);
    transform: scaleY(0);
    transition: transform 0.2s;
  }
  .sub-btn:hover {
    background: rgba(0, 212, 255, 0.1);
    border-color: rgba(0, 212, 255, 0.35);
    color: var(--text-primary);
    transform: translateX(4px);
  }
  .sub-btn:hover::before { transform: scaleY(1); }

  /* ─── SKILLS / EVOLUÇÃO ─── */
  #evolucao { max-width: 700px; margin: 0 auto; }

  .skill-list { display: flex; flex-direction: column; gap: 20px; }

  .skill-item {}
  .skill-meta {
    display: flex;
    justify-content: space-between;
    margin-bottom: 8px;
    font-size: 0.82rem;
  }
  .skill-name { color: var(--text-primary); font-weight: 500; letter-spacing: 1px; }
  .skill-pct { color: var(--cyan); font-family: var(--font-display); font-size: 0.75rem; }
  .skill-track {
    height: 6px;
    background: rgba(255,255,255,0.05);
    border-radius: 10px;
    overflow: hidden;
  }
  .skill-fill {
    height: 100%;
    border-radius: 10px;
    background: linear-gradient(90deg, var(--blue), var(--cyan));
    box-shadow: 0 0 10px var(--cyan-glow);
    width: 0;
    transition: width 1.2s cubic-bezier(0.4, 0, 0.2, 1);
  }

  /* ─── FOOTER ─── */
  footer {
    position: relative;
    z-index: 1;
    padding: 60px 20px;
    text-align: center;
    border-top: 1px solid var(--border);
    background: linear-gradient(to top, rgba(0, 20, 50, 0.4), transparent);
  }
  .footer-title {
    font-family: var(--font-display);
    font-size: 1rem;
    color: var(--text-primary);
    margin-bottom: 8px;
    letter-spacing: 3px;
  }
  .footer-sub {
    font-size: 0.78rem;
    color: var(--text-secondary);
    margin-bottom: 40px;
  }
  .contact-grid {
    display: flex;
    flex-wrap: wrap;
    gap: 12px;
    justify-content: center;
    margin-bottom: 40px;
  }
  .contact-chip {
    display: flex;
    align-items: center;
    gap: 8px;
    padding: 10px 20px;
    background: var(--bg-card);
    border: 1px solid var(--border);
    border-radius: 30px;
    color: var(--text-secondary);
    font-size: 0.8rem;
    text-decoration: none;
    transition: all 0.2s;
    backdrop-filter: blur(8px);
  }
  .contact-chip:hover {
    border-color: var(--cyan);
    color: var(--cyan);
    background: var(--cyan-dim);
    transform: translateY(-2px);
    box-shadow: 0 0 16px rgba(0,212,255,0.15);
  }
  .footer-copy {
    font-size: 0.72rem;
    color: rgba(120, 160, 200, 0.5);
    letter-spacing: 1px;
  }
  .footer-copy span { color: var(--cyan); }

  /* ─── RESPONSIVE ─── */
  @media (max-width: 640px) {
    nav { padding: 14px 20px; }
    .nav-links { gap: 16px; }
    .nav-links a { font-size: 0.7rem; }
    .profile-ring { width: 130px; height: 130px; }
    .profile-pic, .profile-fallback { width: 124px; height: 124px; }
  }

  /* ─── INTERSECTION OBSERVER TARGETS ─── */
  .reveal { opacity: 0; transform: translateY(30px); transition: opacity 0.7s ease, transform 0.7s ease; }
  .reveal.visible { opacity: 1; transform: none; }

  /* ─── GRID LINES DECORATION ─── */
  .grid-decoration {
    position: fixed;
    top: 0; left: 0; right: 0; bottom: 0;
    pointer-events: none;
    z-index: 0;
    background-image:
      linear-gradient(rgba(0,212,255,0.02) 1px, transparent 1px),
      linear-gradient(90deg, rgba(0,212,255,0.02) 1px, transparent 1px);
    background-size: 80px 80px;
  }
</style>
</head>
<body>

<!-- Background layers -->
<div id="stars"></div>
<div class="grid-decoration"></div>

<!-- ─── NAV ─── -->
<nav>
  <a class="nav-logo" href="#">MF_DATA</a>
  <ul class="nav-links">
    <li><a href="#sobre">Sobre</a></li>
    <li><a href="#projetos">Projetos</a></li>
    <li><a href="#evolucao">Skills</a></li>
    <li><a href="#contato">Contato</a></li>
  </ul>
</nav>

<!-- ─── HERO ─── -->
<section class="hero" id="inicio">
  <div class="hero-content">
    <div class="profile-ring">
      <img src="Captura de tela 2026-03-24 165127.png"
           alt="Marcos Feitosa"
           class="profile-pic"
           onerror="this.style.display='none';this.nextElementSibling.style.display='flex'">
      <div class="profile-fallback" style="display:none">🚀</div>
    </div>

    <div class="hero-tag">Especialista em Dados</div>
    <h1 class="hero-title">Marcos Feitosa</h1>
    <p class="hero-subtitle">Transformando dados em decisões inteligentes</p>
    <p class="hero-desc">
      Sou Marcos Feitosa — analista de dados apaixonado por revelar insights que impulsionam resultados reais.
      De dashboards de vendas a análises de saúde (61,98%), cada projeto conta uma história com dados.
    </p>
    <div class="cta-row">
      <a href="#projetos" class="btn-primary">Ver Projetos ✨</a>
      <a href="https://github.com/MarcosFeitosa0408/site-analista-dados/blob/main/Curriculo_Marcos_Feitosa_Links.pdf" target="_blank" class="btn-ghost">Baixar CV</a>
    </div>
  </div>
  <div class="scroll-hint">
    <div class="scroll-line"></div>
    scroll
  </div>
</section>

<!-- ─── SOBRE ─── -->
<section id="sobre" style="max-width:700px;margin:0 auto;">
  <div class="section-header reveal">
    <span class="section-tag">// quem sou eu</span>
    <h2 class="section-title">Sobre Mim</h2>
    <div class="section-line"></div>
  </div>
  <div class="reveal" style="background:var(--bg-card);border:1px solid var(--border);border-radius:20px;padding:36px;backdrop-filter:blur(12px);line-height:1.9;color:var(--text-secondary);font-size:0.9rem;">
    Analista de dados com experiência prática transformando números em soluções reais.
    Trabalho com SQL, Excel, Power BI, Python e Inteligência Artificial para criar dashboards,
    análises preditivas e relatórios que embasam decisões estratégicas. Cada dado é uma
    oportunidade de gerar valor e contar uma história que importa.
  </div>
</section>

<!-- ─── PROJETOS ─── -->
<section id="projetos" style="max-width:900px;margin:0 auto;">
  <div class="section-header reveal">
    <span class="section-tag">// portfólio</span>
    <h2 class="section-title">Meus Projetos</h2>
    <div class="section-line"></div>
  </div>

  <div class="project-grid">

    <!-- SQL -->
    <div class="project-category reveal">
      <div class="cat-header" onclick="toggleCat(this, 'catSQL')">
        <div class="cat-icon">🗄️</div>
        <span class="cat-label">SQL</span>
        <span class="cat-arrow">▼</span>
      </div>
      <div class="cat-submenu hidden" id="catSQL">
        <button class="sub-btn" onclick="window.open('https://www.canva.com/design/DAG0kp2eqrQ/AoySo79LgkQsJWzDWPOEvA/view?utm_content=DAG0kp2eqrQ&utm_campaign=designshare&utm_medium=link2&utm_source=uniquelinks&utlId=hde9167d639','_blank')">Projeto 1 — Portfólio SQL</button>
        <button class="sub-btn" onclick="window.open('https://1drv.ms/p/c/585f0eae7ffe54ba/EZ2BipW3X7BHtEjzMiwJ3DkBOKHGUjGYif24wAD1hsJjww?e=puOxMV&nav=eyJzSWQiOjI1Nn0','_blank')">Projeto 2 — Top 10 SQL</button>
        <button class="sub-btn" onclick="window.open('https://app.presentations.ai/view/jS2F3yjklH','_blank')">Projeto 3 — Explorando Dados</button>
        <button class="sub-btn" onclick="window.open('https://1drv.ms/p/c/585f0eae7ffe54ba/ESZGEP7ubCJEmjOP2j9OFjMBTLOyS2F2pjwwt-slARbE7g?e=oHFAbS','_blank')">Projeto 4 — Intro NoSQL</button>
      </div>
    </div>

    <!-- Slides -->
    <div class="project-category reveal" style="animation-delay:0.1s">
      <div class="cat-header" onclick="toggleCat(this, 'catSlides')">
        <div class="cat-icon">📊</div>
        <span class="cat-label">Slides</span>
        <span class="cat-arrow">▼</span>
      </div>
      <div class="cat-submenu hidden" id="catSlides">
        <button class="sub-btn" onclick="window.open('https://gamma.app/docs/Framework--shdf1hwqr1xcwid?mode=doc','_blank')">Projeto 1 — Framework</button>
        <button class="sub-btn" onclick="window.open('https://gamma.app/docs/Marcos-Feitosa-Analista-de-Dados-Apresenta-Excel-para-Dominar-as--89fesv1ychpc6nh?mode=doc','_blank')">Projeto 2 — Excel & Finanças</button>
        <button class="sub-btn" onclick="window.open('https://github.com/MarcosFeitosa0408/site-analista-dados/blob/main/Sua-empresa-pode-estar-perdendo-talentos-e-nem-sabe-o-porque_Turnover(1).pptx','_blank')">Projeto 3 — Turnover</button>
      </div>
    </div>

    <!-- Excel -->
    <div class="project-category reveal" style="animation-delay:0.2s">
      <div class="cat-header" onclick="toggleCat(this, 'catExcel')">
        <div class="cat-icon">📗</div>
        <span class="cat-label">Excel</span>
        <span class="cat-arrow">▼</span>
      </div>
      <div class="cat-submenu hidden" id="catExcel">
        <button class="sub-btn" onclick="window.open('https://sites.google.com/view/portflio-marcosfeitosa/in%C3%ADcio','_blank')">Projeto 1 — Dashboard Finanças</button>
        <button class="sub-btn" onclick="window.open('https://www.linkedin.com/posts/marcos-feitosa-472197193_tenho-prazer-de-compartilhar-este-projeto-activity-7329323811202338816-lIjJ','_blank')">Projeto 2 — Saúde (61,98%)</button>
        <button class="sub-btn" onclick="window.open('https://github.com/MarcosFeitosa0408/Analise-Turnover','_blank')">Projeto 3 — Análise Turnover</button>
        <button class="sub-btn" onclick="window.open('https://youtu.be/slFW9VhloVY','_blank')">Projeto 4 — Funções Excel</button>
        <button class="sub-btn" onclick="window.open('https://github.com/MarcosFeitosa0408/analise-meteorologica-excel','_blank')">Projeto 5 — Análise Meteorológica</button>
      </div>
    </div>

    <!-- IA -->
    <div class="project-category reveal" style="animation-delay:0.3s">
      <div class="cat-header" onclick="toggleCat(this, 'catIA')">
        <div class="cat-icon">🤖</div>
        <span class="cat-label">Inteligência Artificial</span>
        <span class="cat-arrow">▼</span>
      </div>
      <div class="cat-submenu hidden" id="catIA">
        <button class="sub-btn" onclick="window.open('https://gamma.app/docs/PREVISAO-DE-DEMANDA-LOGISTICA-ufhomlwxixqe3iv?mode=doc','_blank')">Projeto 1 — Previsão Logística</button>
        <button class="sub-btn" onclick="window.open('https://gamma.app/docs/Impulsionando-as-Vendas-Guia-Completo-para-o-Sucesso-plpmlg14j6p99bv?mode=doc','_blank')">Projeto 2 — Impulsionando Vendas</button>
        <button class="sub-btn" onclick="window.open('https://github.com/MarcosFeitosa0408/site-analista-dados/blob/main/Sua-empresa-pode-estar-perdendo-talentos-e-nem-sabe-o-porque_Turnover(1).pptx','_blank')">Projeto 3 — Excel + IA</button>
      </div>
    </div>

    <!-- Power BI -->
    <div class="project-category reveal" style="animation-delay:0.4s">
      <div class="cat-header" onclick="toggleCat(this, 'catPBI')">
        <div class="cat-icon">📈</div>
        <span class="cat-label">Power BI</span>
        <span class="cat-arrow">▼</span>
      </div>
      <div class="cat-submenu hidden" id="catPBI">
        <button class="sub-btn" onclick="window.open('https://youtu.be/nf25G0AyGhs','_blank')">Projeto 1 — Exemplo Dashboard</button>
        <button class="sub-btn">Projeto 2 — Em breve</button>
      </div>
    </div>

    <!-- Python -->
    <div class="project-category reveal" style="animation-delay:0.5s">
      <div class="cat-header" onclick="toggleCat(this, 'catPy')">
        <div class="cat-icon">🐍</div>
        <span class="cat-label">Python</span>
        <span class="cat-arrow">▼</span>
      </div>
      <div class="cat-submenu hidden" id="catPy">
        <button class="sub-btn" onclick="window.open('https://gamma.app/docs/PREVISAO-DE-DEMANDA-LOGISTICA-ufhomlwxixqe3iv','_blank')">Projeto 1 — Previsão de Demanda</button>
      </div>
    </div>

  </div>
</section>

<!-- ─── EVOLUÇÃO ─── -->
<section id="evolucao" style="max-width:700px;margin:0 auto;">
  <div class="section-header reveal">
    <span class="section-tag">// minha evolução</span>
    <h2 class="section-title">Stack de Habilidades</h2>
    <div class="section-line"></div>
  </div>

  <div class="skill-list reveal" id="skillList">
    <div class="skill-item"><div class="skill-meta"><span class="skill-name">SQL</span><span class="skill-pct">90%</span></div><div class="skill-track"><div class="skill-fill" data-w="90"></div></div></div>
    <div class="skill-item"><div class="skill-meta"><span class="skill-name">Slides & Apresentações</span><span class="skill-pct">90%</span></div><div class="skill-track"><div class="skill-fill" data-w="90"></div></div></div>
    <div class="skill-item"><div class="skill-meta"><span class="skill-name">Excel</span><span class="skill-pct">85%</span></div><div class="skill-track"><div class="skill-fill" data-w="85"></div></div></div>
    <div class="skill-item"><div class="skill-meta"><span class="skill-name">Inteligência Artificial</span><span class="skill-pct">75%</span></div><div class="skill-track"><div class="skill-fill" data-w="75"></div></div></div>
    <div class="skill-item"><div class="skill-meta"><span class="skill-name">Power BI</span><span class="skill-pct">60%</span></div><div class="skill-track"><div class="skill-fill" data-w="60"></div></div></div>
    <div class="skill-item"><div class="skill-meta"><span class="skill-name">Python</span><span class="skill-pct">60%</span></div><div class="skill-track"><div class="skill-fill" data-w="60"></div></div></div>
  </div>
</section>

<!-- ─── FOOTER / CONTATO ─── -->
<footer id="contato">
  <p class="footer-title reveal">VAMOS CONECTAR</p>
  <p class="footer-sub reveal">Aberto a projetos, colaborações e oportunidades</p>
  <div class="contact-grid reveal">
    <a class="contact-chip" href="https://wa.me/5511952247141" target="_blank">📞 +55 11 95224-7141</a>
    <a class="contact-chip" href="mailto:marcosfeitosa.analista@gmail.com">📧 Email</a>
    <a class="contact-chip" href="https://www.linkedin.com/in/marcosfeitosa-analista/" target="_blank">🔗 LinkedIn</a>
    <a class="contact-chip" href="https://github.com/MarcosFeitosa0408" target="_blank">📘 GitHub</a>
    <a class="contact-chip" href="https://github.com/MarcosFeitosa0408/site-analista-dados/blob/main/Curriculo_Marcos_Feitosa_Links.pdf" target="_blank">📄 Currículo PDF</a>
  </div>
  <p class="footer-copy">© 2025 <span>Marcos Feitosa</span> · Analista de Dados · Feito com 💙 e muito café</p>
</footer>

<script>
  /* ─── STARFIELD ─── */
  const starsEl = document.getElementById('stars');
  for (let i = 0; i < 180; i++) {
    const s = document.createElement('div');
    s.className = 'star';
    const sz = Math.random() * 2.5 + 0.5;
    s.style.cssText = `
      width:${sz}px; height:${sz}px;
      left:${Math.random()*100}%; top:${Math.random()*100}%;
      --d:${(Math.random()*4+2).toFixed(1)}s;
      animation-delay:${(Math.random()*5).toFixed(1)}s;
    `;
    starsEl.appendChild(s);
  }

  /* ─── DROPDOWN TOGGLE ─── */
  function toggleCat(header, id) {
    const menu = document.getElementById(id);
    const isOpen = !menu.classList.contains('hidden');
    document.querySelectorAll('.cat-submenu').forEach(m => m.classList.add('hidden'));
    document.querySelectorAll('.cat-header').forEach(h => h.classList.remove('open'));
    if (!isOpen) {
      menu.classList.remove('hidden');
      header.classList.add('open');
    }
  }

  /* ─── INTERSECTION OBSERVER ─── */
  const revealObs = new IntersectionObserver((entries) => {
    entries.forEach(e => { if (e.isIntersecting) { e.target.classList.add('visible'); } });
  }, { threshold: 0.15 });
  document.querySelectorAll('.reveal').forEach(el => revealObs.observe(el));

  /* ─── SKILL BARS ─── */
  const skillObs = new IntersectionObserver((entries) => {
    entries.forEach(e => {
      if (e.isIntersecting) {
        e.target.querySelectorAll('.skill-fill').forEach((bar, i) => {
          setTimeout(() => {
            bar.style.width = bar.dataset.w + '%';
          }, i * 100);
        });
        skillObs.unobserve(e.target);
      }
    });
  }, { threshold: 0.3 });
  const sl = document.getElementById('skillList');
  if (sl) skillObs.observe(sl);
</script>
</body>
</html>
