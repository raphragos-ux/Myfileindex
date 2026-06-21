<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rafael R. Config Generator</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        dark: '#0F172A',
                        darker: '#020617',
                        accent: '#3B82F6',
                        success: '#10B981',
                        warning: '#F59E0B',
                        danger: '#EF4444'
                    },
                    fontFamily: {
                        inter: ['Inter', 'system-ui', 'sans-serif'],
                    },
                }
            }
        }
    </script>
    <style type="text/tailwindcss">
        @layer utilities {
            .content-auto {
                content-visibility: auto;
            }
            .scrollbar-thin::-webkit-scrollbar {
                width: 6px;
                height: 6px;
            }
            .scrollbar-thin::-webkit-scrollbar-track {
                background: #1E293B;
            }
            .scrollbar-thin::-webkit-scrollbar-thumb {
                background: #475569;
                border-radius: 3px;
            }
            .scrollbar-thin::-webkit-scrollbar-thumb:hover {
                background: #64748B;
            }
        }
    </style>
</head>
<body class="bg-gradient-to-br from-darker to-dark text-gray-100 font-inter min-h-screen">
    <div class="container mx-auto px-4 py-8 max-w-4xl">
        <!-- Header -->
        <header class="mb-8 text-center">
            <h1 class="text-3xl md:text-4xl font-bold text-accent mb-2">
                <i class="fa fa-cogs mr-2"></i>Config Generator
            </h1>
            <p class="text-gray-400">VMess • VLESS • Trojan • Shadowsocks | GCP Cloud Run</p>
        </header>

        <!-- Main Content -->
        <div class="grid md:grid-cols-2 gap-6">
            <!-- Left Panel -->
            <div class="space-y-6">
                <!-- Server Addresses -->
                <div class="bg-slate-800 rounded-lg p-5 shadow-lg border border-slate-700">
                    <h3 class="text-xl font-semibold text-white mb-3 flex items-center">
                        <i class="fa fa-server mr-2 text-accent"></i>Server Address
                    </h3>
                    <ul class="list-disc list-inside text-gray-300 space-y-1 text-sm">
                        <li>fonts.googleapis.com</li>
                        <li>run.googleapis.com</li>
                        <li>googleapis.com</li>
                        <li>firebase.google.com</li>
                        <li>storage.googleapis.com</li>
                        <li>firebase-settings.crashlytics.com</li>
                    </ul>
                </div>

                <!-- TLS SNI Host -->
                <div class="bg-slate-800 rounded-lg p-5 shadow-lg border border-slate-700">
                    <h3 class="text-xl font-semibold text-white mb-3 flex items-center">
                        <i class="fa fa-lock mr-2 text-success"></i>TLS SNI Host
                    </h3>
                    <ul class="list-disc list-inside text-gray-300 space-y-1 text-sm">
                        <li>fcmtoken.googleapis.com</li>
                        <li>support.maya.ph</li>
                        <li>api.paymaya.com</li>
                        <li>www.maya.ph</li>
                        <li>mayabank.ph</li>
                        <li>firebase-settings.crashlytics.com</li>
                        <li>google.com</li>
                    </ul>
                </div>

                <!-- Protocols & Transport -->
                <div class="bg-slate-800 rounded-lg p-5 shadow-lg border border-slate-700">
                    <div class="grid grid-cols-2 gap-4">
                        <div>
                            <h3 class="text-lg font-semibold text-white mb-2">Protocol Type</h3>
                            <ul class="space-y-1 text-gray-300 text-sm">
                                <li>✅ TROJAN</li>
                                <li>✅ VMESS</li>
                                <li>✅ VLESS</li>
                                <li>✅ SHADOWSOCKS</li>
                            </ul>
                        </div>
                        <div>
                            <h3 class="text-lg font-semibold text-white mb-2">Transport Mode</h3>
                            <ul class="space-y-1 text-gray-300 text-sm">
                                <li>🔌 WebSocket</li>
                                <li>🔌 HTTP Upgrade</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Right Panel -->
            <div class="space-y-6">
                <!-- Real-Time Monitor -->
                <div class="bg-slate-800 rounded-lg p-5 shadow-lg border border-slate-700">
                    <h3 class="text-xl font-semibold text-white mb-4 flex items-center">
                        <i class="fa fa-line-chart mr-2 text-warning"></i>REAL-TIME MONITOR
                    </h3>
                    <div class="grid grid-cols-3 gap-3 text-center">
                        <div class="bg-slate-700 rounded p-3">
                            <p class="text-xs text-gray-400">DOWNLOAD</p>
                            <p class="text-lg font-bold text-success" id="downSpeed">-- MB/s</p>
                        </div>
                        <div class="bg-slate-700 rounded p-3">
                            <p class="text-xs text-gray-400">UPLOAD</p>
                            <p class="text-lg font-bold text-accent" id="upSpeed">-- MB/s</p>
                        </div>
                        <div class="bg-slate-700 rounded p-3">
                            <p class="text-xs text-gray-400">LATENCY</p>
                            <p class="text-lg font-bold text-warning" id="latency">-- ms</p>
                        </div>
                    </div>
                </div>

                <!-- Generator Config + Links -->
                <div class="bg-slate-800 rounded-lg p-5 shadow-lg border border-slate-700">
                    <h3 class="text-xl font-semibold text-white mb-3 flex items-center">
                        <i class="fa fa-code mr-2 text-danger"></i>GENERATOR CONFIG
                    </h3>

                    <!-- 🆕 CONFIG LINKS SECTION -->
                    <div class="bg-slate-900 rounded p-3 mb-4 border border-accent/30">
                        <h4 class="text-md font-semibold text-accent mb-2">📋 READY-TO-USE CONFIG LINKS</h4>
                        <p class="text-xs text-gray-400 mb-2">Palitan ang <code class="text-yellow-300">YOUR_CLOUD_RUN_URL</code> pagkatapos i-deploy</p>
                        <div class="space-y-2 text-sm">
                            <div>
                                <p class="text-green-400 font-medium">VMESS WS:</p>
                                <input type="text" id="vmessLink" value="vmess://eyJhZG1pcCI6IllPVVJfQ0xPVURfUlVOX1VSTCIsImFpZCI6IjAiLCJob3N0IjoiZ29vZ2xlLmNvbSIsImlkIjoicmFmYWVsdHYiLCJuZXQiOiJ3cyIsInBhdGgiOiIvUmFmYWVsLVR2IiwicG9ydCI6IjQ0MyIsInBzIjoiVm1lc3MgUmFmYWVsIiwic2N5IjoiYXV0byIsInNuaSI6Imdvb2dsZS5jb20iLCJ0bHMiOiJ0bHMiLCJ0eXBlIjoiIiwidiI6IjIifQ==" class="w-full bg-slate-800 border border-slate-700 rounded px-2 py-1 text-xs" readonly>
                                <button onclick="copyLink('vmessLink')" class="text-xs text-blue-300 hover:text-blue-400 mt-1">Copy</button>
                            </div>
                            <div>
                                <p class="text-green-400 font-medium">TROJAN WS:</p>
                                <input type="text" id="trojanLink" value="trojan://rafaeltv@YOUR_CLOUD_RUN_URL:443?path=%2Ftrojan-rafael%3Fed%3D2180&security=tls&host=google.com&type=ws&sni=google.com#Trojan-Rafael" class="w-full bg-slate-800 border border-slate-700 rounded px-2 py-1 text-xs" readonly>
                                <button onclick="copyLink('trojanLink')" class="text-xs text-blue-300 hover:text-blue-400 mt-1">Copy</button>
                            </div>
                            <div>
                                <p class="text-green-400 font-medium">VLESS WS:</p>
                                <input type="text" id="vlessLink" value="vless://15f7e8ea-7b56-45d4-93af-31f3c592fdf1@YOUR_CLOUD_RUN_URL:443?path=%2Fvless-rafael%3Fed%3D2180&security=tls&host=google.com&type=ws&encryption=none&sni=google.com#Vless-Rafael" class="w-full bg-slate-800 border border-slate-700 rounded px-2 py-1 text-xs" readonly>
                                <button onclick="copyLink('vlessLink')" class="text-xs text-blue-300 hover:text-blue-400 mt-1">Copy</button>
                            </div>
                            <div>
                                <p class="text-green-400 font-medium">SHADOWSOCKS HTTP-UPGRADE:</p>
                                <input type="text" id="ssLink" value="ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpyYWZhZWx0dkBZT1VSX0NMT1VEX1JVTl9VUkw6NDQz?plugin=v2ray-plugin;path=%2Fhttpupgrade-rafael%3Fed%3D2180;host=google.com;tls;mode=httpupgrade#SS-Rafael" class="w-full bg-slate-800 border border-slate-700 rounded px-2 py-1 text-xs" readonly>
                                <button onclick="copyLink('ssLink')" class="text-xs text-blue-300 hover:text-blue-400 mt-1">Copy</button>
                            </div>
                        </div>
                    </div>

                    <p class="text-gray-300 text-sm mb-3">Shell Deployer Script para sa Google Cloud Run</p>
                    
                    <div class="bg-slate-900 rounded p-3 overflow-x-auto scrollbar-thin max-h-80 overflow-y-auto">
                        <pre class="text-xs text-gray-200 whitespace-pre-wrap" id="scriptArea">
#!/bin/bash

set +e

# =========================================
# SHELL DEPLOYER BY RAFAEL R. 
# WITH VMESS + VLESS + TROJAN + SHADOWSOCKS
# =========================================

# =========================
# COLORS
# =========================
GREEN='\033[1;32m'
RED='\033[1;31m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
CYAN='\033[1;36m'
WHITE='\033[1;37m'
NC='\033[0m'

# =========================
# VARIABLES
# =========================
PROJECT_ID="$(gcloud config get-value project)"
REGION="us-central1"
RAND=$(openssl rand -hex 3)
CLOUD_RUN_SERVICE_NAME="rafael-$RAND"
DOMAIN="www.google.com"
WSPATH_VMESS="/Rafael-Tv"
PASSWORD_VMESS="rafaeltv"
BUILD_DIR=$(mktemp -d)

# =========================
# CLEANUP
# =========================
cleanup() {
    rm -rf "$BUILD_DIR"
}
trap cleanup EXIT

# =========================
# HEADER
# =========================
clear
echo ""
echo -e "${CYAN}=========================================${NC}"
echo -e "${GREEN}       SHELL DEPLOYER BY RAFAEL R.${NC}"
echo -e "${GREEN}    VMESS + VLESS + TROJAN + SS${NC}"
echo -e "${CYAN}=========================================${NC}"
echo ""

# =========================
# CHECK PROJECT
# =========================
if [ -z "$PROJECT_ID" ]; then
    echo ""
    echo -e "${RED}ERROR: No Google Cloud project set.${NC}"
    echo ""
    echo "Run first:"
    echo "gcloud config set project YOUR_PROJECT_ID"
    echo ""
    exit 1
fi

# =========================
# ENABLE REQUIRED APIS
# =========================
echo ""
echo -e "${CYAN}=========================================${NC}"
echo -e "${GREEN}        ENABLING REQUIRED APIS${NC}"
echo -e "${CYAN}=========================================${NC}"
echo ""
gcloud services enable \
run.googleapis.com \
cloudbuild.googleapis.com \
artifactregistry.googleapis.com

# =========================
# BILLING SETTINGS
# =========================
echo ""
echo -e "${CYAN}=========================================${NC}"
echo -e "${GREEN}          BILLING SETTINGS${NC}"
echo -e "${CYAN}=========================================${NC}"
echo ""
echo -e "${WHITE}1) REQUEST-BASED${NC}"
echo "   ( Charged only when processing requests )"
echo "   ( CPU limited outside requests )"
echo ""
echo -e "${WHITE}2) INSTANCE-BASED${NC}"
echo "   ( Charged for full instance lifetime )"
echo "   ( Full CPU always available )"
echo ""
while true; do
    read -p "Select Billing Type [1-2]: " BILLING_CHOICE
    case $BILLING_CHOICE in
        1) BILLING_MODE="request"; break ;;
        2) BILLING_MODE="instance"; break ;;
        *) echo -e "${RED}Invalid choice. Enter 1 or 2${NC}" ;;
    esac
done

# =========================
# RESOURCE SETTINGS
# =========================
echo ""
echo -e "${CYAN}=========================================${NC}"
echo -e "${GREEN}      CLOUD RUN RESOURCE SETTINGS${NC}"
echo -e "${CYAN}=========================================${NC}"
echo ""
echo "MEMORY        vCPU"
echo "1) 512Mi      1) 1vCPU"
echo "2) 1Gi        2) 2vCPU"
echo "3) 2Gi        3) 4vCPU"
echo "4) 4Gi        4) 6vCPU"
echo "5) 8Gi        5) 8vCPU"
echo "6) 16Gi"
echo "7) 32Gi"
echo ""
echo -e "${YELLOW}Recommended: 4Gi / 4vCPU${NC}"
echo ""

while true; do
    read -p "Select Memory [1-7]: " MEMORY_CHOICE
    case $MEMORY_CHOICE in
        1) MEMORY="512Mi"; break ;;
        2) MEMORY="1Gi"; break ;;
        3) MEMORY="2Gi"; break ;;
        4) MEMORY="4Gi"; break ;;
        5) MEMORY="8Gi"; break ;;
        6) MEMORY="16Gi"; break ;;
        7) MEMORY="32Gi"; break ;;
        *) echo -e "${RED}Invalid choice${NC}" ;;
    esac
done

while true; do
    read -p "Select vCPU [1-5]: " CPU_CHOICE
    case $CPU_CHOICE in
        1) CPU="1"; break ;;
        2) CPU="2"; break ;;
        3) CPU="4"; break ;;
        4) CPU="6"; break ;;
        5) CPU="8"; break ;;
        *) echo -e "${RED}Invalid choice${NC}" ;;
    esac
done

CONCURRENCY="1000"
TIMEOUT="3600"

# =========================
# INSTANCE RULES
# =========================
SPECIAL_MODE="false"
[ "$MEMORY" = "4Gi" ] && [ "$CPU" = "4" ] && SPECIAL_MODE="true"

# =========================
# MIN / MAX INSTANCES
# =========================
echo ""
echo -e "${GREEN}Min Instances (0-1):${NC}"
read -p "Enter value [default=0]: " MIN_INST
MIN_INST=${MIN_INST:-0}
[[ ! "$MIN_INST" =~ ^[01]$ ]] && MIN_INST=0

echo ""
if [ "$SPECIAL_MODE" = "true" ]; then
    echo -e "${GREEN}Max Instances (1-4):${NC}"
    read -p "Enter value [default=1]: " MAX_INST
    MAX_INST=${MAX_INST:-1}
    [[ ! "$MAX_INST" =~ ^[1-4]$ ]] && MAX_INST=1
else
    echo -e "${GREEN}Max Instances (0-2):${NC}"
    read -p "Enter value [default=0]: " MAX_INST
    MAX_INST=${MAX_INST:-0}
    [[ ! "$MAX_INST" =~ ^[0-2]$ ]] && MAX_INST=0
fi

# =========================
# CREATE CONFIGS
# =========================
mkdir -p "$BUILD_DIR" && cd "$BUILD_DIR" || exit 1

# --- Xray config.json ---
cat > config.json <<EOF
{
  "log": { "loglevel": "warning" },
  "inbounds": [
    {
      "tag": "vmess-ws",
      "port": 10000,
      "listen": "127.0.0.1",
      "protocol": "vmess",
      "settings": {
        "clients": [
          {
            "id": "$PASSWORD_VMESS",
            "alterId": 0,
            "security": "auto"
          }
        ]
      },
      "sniffing": { "enabled": true, "metadataOnly": false },
      "streamSettings": {
        "network": "ws",
        "wsSettings": { "path": "$WSPATH_VMESS" }
      }
    },
    {
      "tag": "trojan-ws",
      "port": 10001,
      "listen": "127.0.0.1",
      "protocol": "trojan",
      "settings": { "clients": [ { "password": "rafaeltv" } ] },
      "sniffing": { "enabled": true, "metadataOnly": false },
      "streamSettings": {
        "network": "ws",
        "wsSettings": { "path": "/trojan-rafael?ed=2180" }
      }
    },
    {
      "tag": "vless-ws",
      "port": 10002,
      "listen": "127.0.0.1",
      "protocol": "vless",
      "settings": {
        "clients": [ { "id": "15f7e8ea-7b56-45d4-93af-31f3c592fdf1", "level": 0, "email": "vless-rafael" } ],
        "decryption": "none"
      },
      "sniffing": { "enabled": true, "metadataOnly": false },
      "streamSettings": {
        "network": "ws",
        "wsSettings": { "path": "/vless-rafael?ed=2180" }
      }
    },
    {
      "tag": "ss-httpupgrade",
      "port": 11004,
      "listen": "127.0.0.1",
      "protocol": "shadowsocks",
      "settings": { "method": "chacha20-ietf-poly1305", "password": "rafaeltv", "network": "tcp,udp" },
      "sniffing": { "enabled": true, "metadataOnly": false },
      "streamSettings": {
        "network": "httpupgrade",
        "httpupgradeSettings": { "path": "/httpupgrade-rafael?ed=2180" }
      }
    }
  ],
  "outbounds": [ { "protocol": "freedom", "tag": "direct" } ]
}
EOF

# --- Nginx config ---
cat > nginx.conf <<EOF
worker_processes auto;
worker_rlimit_nofile 200000;
events { worker_connections 65535; multi_accept on; }
http {
    sendfile on; tcp_nopush on; tcp_nodelay on;
    keepalive_timeout 65; keepalive_requests 100000;
    client_max_body_size 0;
    proxy_connect_timeout 300; proxy_send_timeout 86400; proxy_read_timeout 86400;
    proxy_buffering off; proxy_request_buffering off;
    server_tokens off;
    gzip on; gzip_comp_level 5; gzip_types text/plain text/css application/json application/javascript;

    map \$request_uri \$backend_host { default $DOMAIN; }
    map \$http_upgrade \$connection_upgrade { default upgrade; '' close; }

    server {
        listen 8080; http2 on;

        location / {
            proxy_ssl_server_name on; proxy_ssl_protocols TLSv1.2 TLSv1.3;
            proxy_pass https://\$backend_host;
            proxy_set_header Host \$backend_host;
            proxy_set_header Referer https://www.google.com/;
            proxy_set_header Origin https://www.cloudflare.com/;
            proxy_set_header Connection ""; proxy_http_version 1.1;
            proxy_set_header X-Real-IP \$remote_addr;
            proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
            proxy_set_header X-Forwarded-Proto \$scheme;
        }

        # --- VMess ---
        location $WSPATH_VMESS {
            proxy_pass http://127.0.0.1:10000;
            proxy_http_version 1.1;
            proxy_set_header Upgrade \$http_upgrade;
            proxy_set_header Connection \$connection_upgrade;
            proxy_set_header Host \$host;
            proxy_read_timeout 86400;
        }

        # --- Trojan ---
        location /trojan-rafael {
            proxy_pass http://127.0.0.1:10001;
            proxy_http_version 1.1;
            proxy_set_header Upgrade \$http_upgrade;
            proxy_set_header Connection \$connection_upgrade;
            proxy_set_header Host \$host;
            proxy_read_timeout 86400;
        }

        # --- VLESS ---
        location /vless-rafael {
            proxy_pass http://127.0.0.1:10002;
            proxy_http_version 1.1;
            proxy_set_header Upgrade \$http_upgrade;
            proxy_set_header Connection \$connection_upgrade;
            proxy_set_header Host \$host;
            proxy_buffering off; proxy_request_buffering off;
            chunked_transfer_encoding off; proxy_read_timeout 86400;
        }

        # --- Shadowsocks ---
        location /httpupgrade-rafael {
            proxy_pass http://127.0.0.1:11004;
            proxy_http_version 1.1;
            proxy_set_header Upgrade \$http_upgrade;
            proxy_set_header Connection \$connection_upgrade;
            proxy_set_header Host \$host;
            proxy_read_timeout 86400;
        }
    }
}
EOF

# --- Entrypoint ---
cat > entrypoint.sh <<EOF
#!/bin/sh
/usr/local/bin/xray run -c /etc/xray.json &
sleep 3
exec /usr/local/openresty/bin/openresty -g 'daemon off;'
EOF
chmod +x entrypoint.sh

# --- Dockerfile ---
cat > Dockerfile <<EOF
FROM alpine:3.19 AS xray-bin
RUN apk add --no-cache curl unzip ca-certificates bash
WORKDIR /app
RUN curl -L https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip -o xray.zip \
    && unzip xray.zip && chmod +x xray && mv xray /usr/local/bin/xray && rm -f xray.zip

FROM openresty/openresty:alpine-fat
RUN apk add --no-cache ca-certificates bash curl tzdata
COPY --from=xray-bin /usr/local/bin/xray /usr/local/bin/xray
COPY config.json /etc/xray.json
COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /usr/local/bin/xray /entrypoint.sh
EXPOSE 8080
ENTRYPOINT ["/entrypoint.sh"]
EOF

# =========================
# BUILD & DEPLOY
# =========================
echo ""
echo -e "${CYAN}=========================================${NC}"
echo -e "${GREEN}          BUILDING IMAGE${NC}"
echo -e "${CYAN}=========================================${NC}"
echo ""
gcloud builds submit \
  --tag gcr.io/$PROJECT_ID/$CLOUD_RUN_SERVICE_NAME \
  . --quiet

BILLING_FLAGS=$([ "$BILLING_MODE" = "instance" ] && echo "--no-cpu-throttling" || echo "--cpu-throttling")

echo ""
echo -e "${CYAN}=========================================${NC}"
echo -e "${GREEN}         DEPLOYING CLOUD RUN${NC}"
echo -e "${CYAN}=========================================${NC}"
echo ""
gcloud run deploy $CLOUD_RUN_SERVICE_NAME \
  --image gcr.io/$PROJECT_ID/$CLOUD_RUN_SERVICE_NAME \
  --platform managed \
  --region $REGION \
  --allow-unauthenticated \
  --port 8080 \
  --memory $MEMORY \
  --cpu $CPU \
  --concurrency $CONCURRENCY \
  --timeout $TIMEOUT \
  --min-instances $MIN_INST \
  --max-instances $MAX_INST \
  --execution-environment gen2 \
  --cpu-boost \
  $BILLING_FLAGS \
  --quiet

CLOUD_RUN_URL=$(gcloud run services describe $CLOUD_RUN_SERVICE_NAME \
  --region=$REGION --format='value(status.url)')

# =========================
# FINAL OUTPUT
# =========================
echo ""
echo -e "${CYAN}=========================================${NC}"
echo -e "${GREEN}✅ DEPLOYMENT COMPLETE${NC}"
echo -e "${CYAN}=========================================${NC}"
echo ""

echo -e "${GREEN}🔗 Cloud Run URL:${NC}"
echo "$CLOUD_RUN_URL"
echo ""

echo -e "${CYAN}--- VMESS WS ---${NC}"
echo "ID / UUID: rafaeltv"
echo "Alter ID: 0"
echo "Security: auto"
echo "Path: $WSPATH_VMESS"
echo "Network: ws"
echo ""

echo -e "${CYAN}--- TROJAN WS ---${NC}"
echo "Password: rafaeltv"
echo "Path: /trojan-rafael?ed=2180"
echo ""

echo -e "${CYAN}--- VLESS WS ---${NC}"
echo "UUID: 15f7e8ea-7b56-45d4-93af-31f3c592fdf1"
echo "Decryption: none"
echo "Path: /vless-rafael?ed=2180"
echo ""

echo -e "${CYAN}--- SHADOWSOCKS ---${NC}"
echo "Password: rafaeltv"
echo "Method: chacha20-ietf-poly1305"
echo "Path: /httpupgrade-rafael?ed=2180"
echo ""

echo -e "${CYAN}=========================================${NC}"
echo -e "${GREEN}All protocols ready to import!${NC}"
echo -e "${CYAN}=========================================${NC}"
                        </pre>
                    </div>

                    <div class="mt-4 flex gap-2">
                        <button onclick="copyScript()" class="bg-accent hover:bg-accent/80 text-white px-4 py-2 rounded text-sm flex items-center gap-2">
                            <i class="fa fa-copy"></i> Copy Script
                        </button>
                        <button onclick="downloadScript()" class="bg-success hover:bg-success/80 text-white px-4 py-2 rounded text-sm flex items-center gap-2">
                            <i class="fa fa-download"></i> Download .sh
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer -->
        <footer class="mt-10 text-center text-gray-500 text-sm">
            <p>Deployer & Config Generator • VMess/VLESS/Trojan/Shadowsocks • GCP Cloud Run</p>
            <p class="mt-1">© 2026 Rafael R.</p>
        </footer>
    </div>

    <!-- Scripts -->
    <script>
        // Simple real-time monitor simulation
        function updateMonitor() {
            document.getElementById('downSpeed').textContent = (Math.random() * 12 + 1).toFixed(2) + " MB/s";
            document.getElementById('upSpeed').textContent = (Math.random() * 5 + 0.5).toFixed(2) + " MB/s";
            document.getElementById('latency').textContent = Math.floor(Math.random() * 60 + 20) + " ms";
        }
        setInterval(updateMonitor, 2000);

        // Copy function for links
        function copyLink(id) {
            const input = document.getElementById(id);
            input.select();
            navigator.clipboard.writeText(input.value).then(() => {
                alert("✅ Link copied! Palitan ang YOUR_CLOUD_RUN_URL pagkatapos ma-deploy.");
            });
        }

        // Copy script function
        function copyScript() {
            const scriptText = document.getElementById('scriptArea').textContent;
            navigator.clipboard.writeText(scriptText).then(() => {
                alert("✅ Script copied to clipboard!");
            }).catch(() => {
                alert("❌ Failed to copy. Please select manually.");
            });
        }

        // Download script function
        function downloadScript() {
            const scriptText = document.getElementById('scriptArea').textContent;
            const blob = new Blob([scriptText], { type: 'text/plain' });
            const url = URL.createObjectURL(blob);
            const a = document.createElement('a');
            a.href = url;
            a.download = "rafael_gcp_deployer.sh";
            a.click();
            URL.revokeObjectURL(url);
        }
    </script>
</body>
</html>
