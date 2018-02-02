const puppeteer = require('puppeteer');

it('should load random image', async () => {
  const browser = await puppeteer.launch({
    args: ['--no-sandbox', '--disable-setuid-sandbox']
  });
  const page = await browser.newPage();
  await page.goto('https://picsum.photos/200/300/?random');
  await page.screenshot({ path: 'random.png' });
  await browser.close();
});
