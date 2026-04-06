# Claude Code 설정

개인 Claude Code 환경 설정 모음입니다.

## 설치된 스킬 / 플러그인

### Superpowers (obra/superpowers)
브레인스토밍, 플랜 실행, 디버깅, TDD 등 개발 워크플로우 스킬 모음

```bash
npx skills add obra/superpowers -g -y
```

### GSD (bkit)
프로젝트 관리 및 PDCA 워크플로우 플러그인

```bash
npx claude plugin add bkit@bkit-marketplace
```

## 설정 파일 적용

### settings.json

```bash
cp settings.json ~/.claude/settings.json
```

> `hooks` 섹션은 GSD 플러그인이 자동 생성하므로 제외됨. GSD 설치 후 자동 추가됨.

### statusline-command.sh

ccstatusline 위에 컨텍스트 사용량(%)을 두 번째 줄로 표시.

```bash
cp statusline-command.sh ~/.claude/statusline-command.sh
chmod +x ~/.claude/statusline-command.sh
```

의존성:
- `jq`
- `npx` (Node.js)

## 사용 가능한 주요 스킬

| 슬래시 커맨드 | 용도 |
|---|---|
| `/brainstorming` | 기능/아이디어 설계 전 브레인스토밍 |
| `/writing-plans` | 구현 계획 작성 |
| `/executing-plans` | 작성된 계획 실행 |
| `/systematic-debugging` | 버그 디버깅 |
| `/test-driven-development` | TDD 워크플로우 |
| `/verification-before-completion` | 완료 전 검증 |
| `/requesting-code-review` | 코드 리뷰 요청 |
| `/gsd:new-project` | 새 프로젝트 초기화 |
| `/gsd:plan-phase` | 페이즈 계획 |
| `/gsd:execute-phase` | 페이즈 실행 |
