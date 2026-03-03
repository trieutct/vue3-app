<script setup lang="ts">
import { ref, onMounted } from 'vue'

const activeTab = ref('about')
const animateStats = ref(false)

const stats = [
  { label: 'Projects Done', value: 48, suffix: '+' },
  { label: 'Happy Clients', value: 32, suffix: '' },
  { label: 'Awards Won', value: 7, suffix: '' },
  { label: 'Years Exp.', value: 5, suffix: '+' },
]

const skills = [
  { name: 'Vue.js / Nuxt', level: 95, color: '#42d392' },
  { name: 'TypeScript', level: 88, color: '#3178c6' },
  { name: 'UI/UX Design', level: 80, color: '#a855f7' },
  { name: 'Node.js', level: 75, color: '#68a063' },
  { name: 'Figma', level: 70, color: '#f24e1e' },
]

const experiences = [
  {
    role: 'Senior Frontend Developer',
    company: 'TechCorp Inc.',
    period: '2022 – Present',
    desc: 'Led development of scalable Vue 3 applications and mentored junior developers.',
  },
  {
    role: 'Frontend Developer',
    company: 'StartupXYZ',
    period: '2020 – 2022',
    desc: 'Built interactive dashboards and optimized web performance by 40%.',
  },
  {
    role: 'Junior Developer',
    company: 'Agency Creative',
    period: '2019 – 2020',
    desc: 'Developed responsive landing pages and e-commerce solutions.',
  },
]

const projects = [
  {
    name: 'Dashboard Pro',
    desc: 'Real-time analytics dashboard with Vue 3 & D3.js',
    tags: ['Vue 3', 'D3.js', 'TypeScript'],
    color: '#6366f1',
    icon: '📊',
  },
  {
    name: 'ShopFlow',
    desc: 'Full-stack e-commerce platform with Nuxt 3',
    tags: ['Nuxt 3', 'Pinia', 'Stripe'],
    color: '#22d3ee',
    icon: '🛒',
  },
  {
    name: 'DevConnect',
    desc: 'Social platform connecting developers worldwide',
    tags: ['Vue 3', 'Socket.io', 'MongoDB'],
    color: '#a855f7',
    icon: '🌐',
  },
]

const socials = [
  { icon: '🐙', label: 'GitHub', href: '#' },
  { icon: '💼', label: 'LinkedIn', href: '#' },
  { icon: '🐦', label: 'Twitter', href: '#' },
  { icon: '🌐', label: 'Website', href: '#' },
]

onMounted(() => {
  setTimeout(() => {
    animateStats.value = true
  }, 300)
})
</script>

<template>
  <div class="profile-page">
    <!-- Background blobs -->
    <div class="blob blob-1"></div>
    <div class="blob blob-2"></div>
    <div class="blob blob-3"></div>

    <div class="profile-container">
      <!-- LEFT SIDEBAR -->
      <aside class="sidebar">
        <div class="avatar-wrapper">
          <div class="avatar-glow"></div>
          <img
            class="avatar"
            src="https://api.dicebear.com/7.x/avataaars/svg?seed=trieu&backgroundColor=b6e3f4"
            alt="Avatar"
          />
          <span class="status-badge">🟢 Available</span>
        </div>

        <h1 class="name">Trịnh Công Triệu</h1>
        <p class="title">Senior Frontend Developer</p>
        <p class="location">📍 Hồ Chí Minh, Việt Nam</p>

        <div class="socials">
          <a
            v-for="s in socials"
            :key="s.label"
            :href="s.href"
            class="social-btn"
            :title="s.label"
          >
            <span>{{ s.icon }}</span>
          </a>
        </div>

        <button class="hire-btn">
          <span>✉️</span> Liên hệ hợp tác
        </button>

        <div class="quick-info">
          <div class="info-row">
            <span class="info-icon">📧</span>
            <span>trieu@example.com</span>
          </div>
          <div class="info-row">
            <span class="info-icon">📱</span>
            <span>+84 900 000 000</span>
          </div>
          <div class="info-row">
            <span class="info-icon">🎂</span>
            <span>01/01/1999</span>
          </div>
        </div>
      </aside>

      <!-- RIGHT CONTENT -->
      <main class="content">
        <!-- Stats Row -->
        <div class="stats-row" :class="{ animated: animateStats }">
          <div v-for="stat in stats" :key="stat.label" class="stat-card">
            <span class="stat-value">{{ stat.value }}{{ stat.suffix }}</span>
            <span class="stat-label">{{ stat.label }}</span>
          </div>
        </div>

        <!-- Tab Navigation -->
        <div class="tabs">
          <button
            v-for="tab in ['about', 'skills', 'experience', 'projects']"
            :key="tab"
            class="tab-btn"
            :class="{ active: activeTab === tab }"
            @click="activeTab = tab"
          >
            {{
              tab === 'about'
                ? '👤 Về tôi'
                : tab === 'skills'
                ? '⚡ Kỹ năng'
                : tab === 'experience'
                ? '💼 Kinh nghiệm'
                : '🚀 Dự án'
            }}
          </button>
        </div>

        <!-- ABOUT TAB -->
        <div v-if="activeTab === 'about'" class="tab-panel">
          <h2 class="section-title">Xin chào! Tôi là <span class="highlight">Trịnh Công Triệuuuuuuuuuu</span> 👋</h2>
          <p class="bio">
            Tôi là một <strong>Senior Frontend Developer</strong> với hơn 5 năm kinh nghiệm xây dựng
            các ứng dụng web hiện đại, tối ưu hiệu suất cao. Đam mê với Vue.js, TypeScript, và thiết
            kế UI/UX. Tôi luôn hướng đến việc tạo ra những sản phẩm số mang lại trải nghiệm người dùng
            tuyệt vời và giải quyết bài toán kinh doanh hiệu quả.
          </p>
          <p class="bio">
            Khi không code, tôi thích đọc sách về công nghệ, tham gia các cộng đồng lập trình viên
            và khám phá các xu hướng thiết kế mới nhất.
          </p>

          <div class="tags-cloud">
            <span
              v-for="tag in ['Vue 3', 'TypeScript', 'Nuxt 3', 'Pinia', 'Vite', 'Node.js', 'Figma', 'TailwindCSS', 'GraphQL', 'Docker']"
              :key="tag"
              class="tech-tag"
            >
              {{ tag }}
            </span>
          </div>
        </div>

        <!-- SKILLS TAB -->
        <div v-if="activeTab === 'skills'" class="tab-panel">
          <h2 class="section-title">Kỹ năng <span class="highlight">chuyên môn</span></h2>
          <div class="skills-list">
            <div v-for="skill in skills" :key="skill.name" class="skill-item">
              <div class="skill-header">
                <span class="skill-name">{{ skill.name }}</span>
                <span class="skill-percent" :style="{ color: skill.color }">{{ skill.level }}%</span>
              </div>
              <div class="skill-track">
                <div
                  class="skill-fill"
                  :style="{ width: skill.level + '%', background: skill.color }"
                ></div>
              </div>
            </div>
          </div>
        </div>

        <!-- EXPERIENCE TAB -->
        <div v-if="activeTab === 'experience'" class="tab-panel">
          <h2 class="section-title">Kinh nghiệm <span class="highlight">làm việc</span></h2>
          <div class="timeline">
            <div v-for="(exp, i) in experiences" :key="i" class="timeline-item">
              <div class="timeline-dot"></div>
              <div class="timeline-card">
                <div class="exp-header">
                  <div>
                    <h3 class="exp-role">{{ exp.role }}</h3>
                    <p class="exp-company">{{ exp.company }}</p>
                  </div>
                  <span class="exp-period">{{ exp.period }}</span>
                </div>
                <p class="exp-desc">{{ exp.desc }}</p>
              </div>
            </div>
          </div>
        </div>

        <!-- PROJECTS TAB -->
        <div v-if="activeTab === 'projects'" class="tab-panel">
          <h2 class="section-title">Dự án <span class="highlight">nổi bật</span></h2>
          <div class="projects-grid">
            <div v-for="proj in projects" :key="proj.name" class="project-card">
              <div class="project-icon" :style="{ background: proj.color + '22', color: proj.color }">
                {{ proj.icon }}
              </div>
              <h3 class="project-name">{{ proj.name }}</h3>
              <p class="project-desc">{{ proj.desc }}</p>
              <div class="project-tags">
                <span v-for="tag in proj.tags" :key="tag" class="project-tag" :style="{ borderColor: proj.color + '66', color: proj.color }">
                  {{ tag }}
                </span>
              </div>
            </div>
          </div>
        </div>
      </main>
    </div>
  </div>
</template>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap');

/* === PAGE === */
.profile-page {
  font-family: 'Inter', sans-serif;
  min-height: 100vh;
  background: #0d0d1a;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 2rem;
  position: relative;
  overflow: hidden;
}

/* === BLOBS === */
.blob {
  position: fixed;
  border-radius: 50%;
  filter: blur(80px);
  opacity: 0.18;
  pointer-events: none;
  animation: floatBlob 12s ease-in-out infinite alternate;
}
.blob-1 {
  width: 500px; height: 500px;
  background: #6366f1;
  top: -100px; left: -100px;
  animation-delay: 0s;
}
.blob-2 {
  width: 400px; height: 400px;
  background: #a855f7;
  bottom: -80px; right: -60px;
  animation-delay: 3s;
}
.blob-3 {
  width: 300px; height: 300px;
  background: #22d3ee;
  top: 40%; left: 50%;
  transform: translate(-50%,-50%);
  animation-delay: 6s;
}
@keyframes floatBlob {
  0% { transform: scale(1) translateY(0); }
  100% { transform: scale(1.1) translateY(-30px); }
}

/* === CONTAINER === */
.profile-container {
  display: grid;
  grid-template-columns: 300px 1fr;
  gap: 1.5rem;
  max-width: 1100px;
  width: 100%;
  position: relative;
  z-index: 1;
}

/* === SIDEBAR === */
.sidebar {
  background: rgba(255,255,255,0.04);
  backdrop-filter: blur(20px);
  border: 1px solid rgba(255,255,255,0.08);
  border-radius: 24px;
  padding: 2rem 1.5rem;
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 1rem;
  text-align: center;
}

.avatar-wrapper {
  position: relative;
  width: 120px;
  height: 120px;
}
.avatar-glow {
  position: absolute;
  inset: -6px;
  border-radius: 50%;
  background: conic-gradient(#6366f1, #a855f7, #22d3ee, #6366f1);
  animation: spinGlow 4s linear infinite;
}
@keyframes spinGlow {
  to { transform: rotate(360deg); }
}
.avatar {
  position: absolute;
  inset: 4px;
  border-radius: 50%;
  background: #1a1a2e;
  object-fit: cover;
  border: 3px solid #0d0d1a;
  z-index: 1;
}
.status-badge {
  position: absolute;
  bottom: 4px;
  right: -10px;
  background: rgba(20,20,40,0.9);
  border: 1px solid rgba(255,255,255,0.12);
  border-radius: 20px;
  font-size: 0.65rem;
  padding: 2px 8px;
  white-space: nowrap;
  z-index: 2;
  color: #a3e635;
}

.name {
  font-size: 1.4rem;
  font-weight: 800;
  color: #f1f5f9;
  margin: 0.5rem 0 0;
}
.title {
  font-size: 0.82rem;
  color: #818cf8;
  font-weight: 500;
  margin: 0;
  letter-spacing: 0.04em;
  text-transform: uppercase;
}
.location {
  font-size: 0.8rem;
  color: #94a3b8;
  margin: 0;
}

.socials {
  display: flex;
  gap: 0.5rem;
}
.social-btn {
  width: 38px;
  height: 38px;
  display: flex;
  align-items: center;
  justify-content: center;
  background: rgba(255,255,255,0.06);
  border: 1px solid rgba(255,255,255,0.1);
  border-radius: 10px;
  font-size: 1rem;
  text-decoration: none;
  transition: all 0.2s;
}
.social-btn:hover {
  background: rgba(99,102,241,0.25);
  border-color: #6366f1;
  transform: translateY(-2px);
}

.hire-btn {
  width: 100%;
  padding: 0.75rem;
  border-radius: 12px;
  border: none;
  background: linear-gradient(135deg, #6366f1, #a855f7);
  color: #fff;
  font-weight: 700;
  font-size: 0.9rem;
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 0.4rem;
  transition: all 0.3s;
  box-shadow: 0 4px 24px rgba(99,102,241,0.4);
}
.hire-btn:hover {
  transform: translateY(-2px);
  box-shadow: 0 8px 32px rgba(99,102,241,0.55);
}

.quick-info {
  width: 100%;
  display: flex;
  flex-direction: column;
  gap: 0.6rem;
  margin-top: 0.5rem;
}
.info-row {
  display: flex;
  align-items: center;
  gap: 0.6rem;
  font-size: 0.78rem;
  color: #94a3b8;
  background: rgba(255,255,255,0.03);
  padding: 0.5rem 0.75rem;
  border-radius: 8px;
}
.info-icon { font-size: 0.9rem; }

/* === CONTENT === */
.content {
  display: flex;
  flex-direction: column;
  gap: 1.25rem;
}

/* === STATS === */
.stats-row {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 1rem;
}
.stat-card {
  background: rgba(255,255,255,0.04);
  backdrop-filter: blur(16px);
  border: 1px solid rgba(255,255,255,0.08);
  border-radius: 16px;
  padding: 1.2rem 1rem;
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 0.25rem;
  transition: transform 0.3s, border-color 0.3s;
}
.stat-card:hover {
  transform: translateY(-3px);
  border-color: rgba(99,102,241,0.4);
}
.stat-value {
  font-size: 2rem;
  font-weight: 800;
  background: linear-gradient(135deg, #818cf8, #c084fc);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}
.stat-label {
  font-size: 0.72rem;
  color: #64748b;
  text-transform: uppercase;
  letter-spacing: 0.05em;
  font-weight: 500;
}

/* === TABS === */
.tabs {
  display: flex;
  gap: 0.5rem;
  background: rgba(255,255,255,0.03);
  border: 1px solid rgba(255,255,255,0.07);
  border-radius: 14px;
  padding: 0.4rem;
}
.tab-btn {
  flex: 1;
  padding: 0.6rem 1rem;
  border: none;
  border-radius: 10px;
  background: transparent;
  color: #64748b;
  font-size: 0.82rem;
  font-weight: 600;
  cursor: pointer;
  transition: all 0.25s;
  font-family: 'Inter', sans-serif;
}
.tab-btn:hover { color: #94a3b8; background: rgba(255,255,255,0.05); }
.tab-btn.active {
  background: linear-gradient(135deg, #6366f1, #a855f7);
  color: #fff;
  box-shadow: 0 4px 16px rgba(99,102,241,0.35);
}

/* === TAB PANELS === */
.tab-panel {
  background: rgba(255,255,255,0.04);
  backdrop-filter: blur(20px);
  border: 1px solid rgba(255,255,255,0.08);
  border-radius: 20px;
  padding: 2rem;
  animation: fadeUp 0.35s ease;
}
@keyframes fadeUp {
  from { opacity: 0; transform: translateY(12px); }
  to { opacity: 1; transform: translateY(0); }
}

.section-title {
  font-size: 1.4rem;
  font-weight: 800;
  color: #f1f5f9;
  margin: 0 0 1.25rem;
}
.highlight {
  background: linear-gradient(135deg, #818cf8, #c084fc);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

/* ABOUT */
.bio {
  color: #94a3b8;
  line-height: 1.8;
  margin: 0 0 1rem;
  font-size: 0.9rem;
}
.tags-cloud {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
  margin-top: 1rem;
}
.tech-tag {
  background: rgba(99,102,241,0.12);
  border: 1px solid rgba(99,102,241,0.3);
  color: #818cf8;
  border-radius: 20px;
  padding: 0.3rem 0.85rem;
  font-size: 0.78rem;
  font-weight: 500;
  transition: all 0.2s;
  cursor: default;
}
.tech-tag:hover {
  background: rgba(99,102,241,0.25);
  transform: translateY(-1px);
}

/* SKILLS */
.skills-list { display: flex; flex-direction: column; gap: 1.2rem; }
.skill-item {}
.skill-header {
  display: flex;
  justify-content: space-between;
  margin-bottom: 0.4rem;
}
.skill-name { font-size: 0.88rem; color: #cbd5e1; font-weight: 600; }
.skill-percent { font-size: 0.82rem; font-weight: 700; }
.skill-track {
  height: 8px;
  background: rgba(255,255,255,0.06);
  border-radius: 99px;
  overflow: hidden;
}
.skill-fill {
  height: 100%;
  border-radius: 99px;
  animation: growBar 1s ease-out;
}
@keyframes growBar {
  from { width: 0 !important; }
}

/* TIMELINE */
.timeline { display: flex; flex-direction: column; gap: 1.5rem; position: relative; }
.timeline::before {
  content: '';
  position: absolute;
  left: 10px;
  top: 0; bottom: 0;
  width: 2px;
  background: linear-gradient(to bottom, #6366f1, #a855f7, transparent);
  border-radius: 2px;
}
.timeline-item {
  display: flex;
  gap: 1.25rem;
  position: relative;
}
.timeline-dot {
  width: 22px;
  height: 22px;
  border-radius: 50%;
  background: linear-gradient(135deg, #6366f1, #a855f7);
  border: 3px solid #0d0d1a;
  flex-shrink: 0;
  margin-top: 4px;
  box-shadow: 0 0 12px rgba(99,102,241,0.6);
}
.timeline-card {
  background: rgba(255,255,255,0.04);
  border: 1px solid rgba(255,255,255,0.08);
  border-radius: 14px;
  padding: 1rem 1.25rem;
  flex: 1;
  transition: border-color 0.2s;
}
.timeline-card:hover { border-color: rgba(99,102,241,0.35); }
.exp-header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  margin-bottom: 0.5rem;
  flex-wrap: wrap;
  gap: 0.5rem;
}
.exp-role {
  font-size: 0.95rem;
  font-weight: 700;
  color: #e2e8f0;
  margin: 0 0 0.2rem;
}
.exp-company {
  font-size: 0.8rem;
  color: #818cf8;
  font-weight: 500;
  margin: 0;
}
.exp-period {
  font-size: 0.72rem;
  background: rgba(99,102,241,0.15);
  border: 1px solid rgba(99,102,241,0.3);
  color: #818cf8;
  padding: 0.2rem 0.6rem;
  border-radius: 20px;
  white-space: nowrap;
  font-weight: 600;
}
.exp-desc {
  font-size: 0.82rem;
  color: #64748b;
  line-height: 1.6;
  margin: 0;
}

/* PROJECTS */
.projects-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 1rem;
}
.project-card {
  background: rgba(255,255,255,0.04);
  border: 1px solid rgba(255,255,255,0.08);
  border-radius: 16px;
  padding: 1.25rem;
  transition: all 0.3s;
  cursor: default;
}
.project-card:hover {
  transform: translateY(-4px);
  border-color: rgba(255,255,255,0.15);
  background: rgba(255,255,255,0.07);
}
.project-icon {
  width: 44px;
  height: 44px;
  border-radius: 12px;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 1.4rem;
  margin-bottom: 0.75rem;
}
.project-name {
  font-size: 0.95rem;
  font-weight: 700;
  color: #e2e8f0;
  margin: 0 0 0.4rem;
}
.project-desc {
  font-size: 0.78rem;
  color: #64748b;
  line-height: 1.5;
  margin: 0 0 0.75rem;
}
.project-tags { display: flex; flex-wrap: wrap; gap: 0.3rem; }
.project-tag {
  font-size: 0.68rem;
  font-weight: 600;
  border: 1px solid;
  border-radius: 20px;
  padding: 0.15rem 0.55rem;
}

/* RESPONSIVE */
@media (max-width: 900px) {
  .profile-container { grid-template-columns: 1fr; }
  .stats-row { grid-template-columns: repeat(2, 1fr); }
  .projects-grid { grid-template-columns: 1fr 1fr; }
  .tabs { flex-wrap: wrap; }
}
@media (max-width: 560px) {
  .profile-page { padding: 1rem; }
  .stats-row { grid-template-columns: repeat(2, 1fr); }
  .projects-grid { grid-template-columns: 1fr; }
}
</style>
