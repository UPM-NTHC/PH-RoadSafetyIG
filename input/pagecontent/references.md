## ONEISS Crash Investigation Form

- [Download ONEISS_revise.pdf](downloads/ONEISS_revise.pdf)
- Inline preview:

  <object data="downloads/ONEISS_revise.pdf" type="application/pdf" width="100%" height="720px">
    <div
      class="pdf-fallback"
      data-pdf-slug="oneiss-revise"
      data-pdf-title="ONEISS Crash Investigation Form"
      data-max-pages="20"
      data-pdf-download="downloads/ONEISS_revise.pdf"
      style="max-height: 720px; overflow-y: auto; border: 1px solid #d0d0d0; padding: 0.75rem; background: #ffffff; box-shadow: inset 0 0 0 1px #f8f8f8;"
      role="region"
      aria-live="polite"
      aria-label="Image preview pages for ONEISS Crash Investigation Form PDF"
    >
      <p class="pdf-fallback__status">
        Inline PDF preview unavailable. Generated page images will appear below when present.
        <a href="downloads/ONEISS_revise.pdf">Download ONEISS_revise.pdf</a> instead.
      </p>
    </div>
    <script>
      (() => {
        const container = document.currentScript?.previousElementSibling;
        if (!container || !container.dataset.pdfSlug) {
          return;
        }
        const slug = container.dataset.pdfSlug;
        const title = container.dataset.pdfTitle ?? slug;
        const maxPages = Number.parseInt(container.dataset.maxPages ?? "20", 10);
        const status = container.querySelector(".pdf-fallback__status");
        const basePath = container.dataset.basePath ?? "images";
        const downloadHref = container.dataset.pdfDownload ?? "";
        let page = 1;

        const loadNext = () => {
          if (page > maxPages) {
            if (status) {
              status.textContent = `Displayed first ${maxPages} pages of ${title}.`;
            }
            return;
          }

          const padded = String(page).padStart(2, "0");
          const img = new Image();
          img.decoding = "async";
          img.loading = "lazy";
          img.alt = `Page ${page} preview of ${title}`;
          img.style.width = "100%";
          img.style.margin = "0 0 1rem 0";

          img.onload = () => {
            if (status) {
              status.remove();
            }
            container.appendChild(img);
            page += 1;
            loadNext();
          };

          img.onerror = () => {
            if (page === 1) {
              if (status) {
                status.innerHTML =
                  downloadHref
                    ? `Image previews unavailable. <a href="${downloadHref}">Download the PDF</a> instead.`
                    : "Image previews unavailable.";
              }
            }
          };

          img.src = `${basePath}/${slug}/${slug}-page-${padded}.png`;
        };

        loadNext();
      })();
    </script>
  </object>

## MMDA Run Report Form

- [Download Run Report.pdf](downloads/Run Report.pdf)
- Inline preview:

  <object data="downloads/Run Report.pdf" type="application/pdf" width="100%" height="720px">
    <div
      class="pdf-fallback"
      data-pdf-slug="run-report"
      data-pdf-title="MMDA Run Report Form"
      data-max-pages="20"
      data-pdf-download="downloads/Run Report.pdf"
      style="max-height: 720px; overflow-y: auto; border: 1px solid #d0d0d0; padding: 0.75rem; background: #ffffff; box-shadow: inset 0 0 0 1px #f8f8f8;"
      role="region"
      aria-live="polite"
      aria-label="Image preview pages for MMDA Run Report Form PDF"
    >
      <p class="pdf-fallback__status">
        Inline PDF preview unavailable. Generated page images will appear below when present.
        <a href="downloads/Run Report.pdf">Download Run Report.pdf</a> instead.
      </p>
    </div>
    <script>
      (() => {
        const container = document.currentScript?.previousElementSibling;
        if (!container || !container.dataset.pdfSlug) {
          return;
        }
        const slug = container.dataset.pdfSlug;
        const title = container.dataset.pdfTitle ?? slug;
        const maxPages = Number.parseInt(container.dataset.maxPages ?? "20", 10);
        const status = container.querySelector(".pdf-fallback__status");
        const basePath = container.dataset.basePath ?? "images";
        const downloadHref = container.dataset.pdfDownload ?? "";
        let page = 1;

        const loadNext = () => {
          if (page > maxPages) {
            if (status) {
              status.textContent = `Displayed first ${maxPages} pages of ${title}.`;
            }
            return;
          }

          const padded = String(page).padStart(2, "0");
          const img = new Image();
          img.decoding = "async";
          img.loading = "lazy";
          img.alt = `Page ${page} preview of ${title}`;
          img.style.width = "100%";
          img.style.margin = "0 0 1rem 0";

          img.onload = () => {
            if (status) {
              status.remove();
            }
            container.appendChild(img);
            page += 1;
            loadNext();
          };

          img.onerror = () => {
            if (page === 1) {
              if (status) {
                status.innerHTML =
                  downloadHref
                    ? `Image previews unavailable. <a href="${downloadHref}">Download the PDF</a> instead.`
                    : "Image previews unavailable.";
              }
            }
          };

          img.src = `${basePath}/${slug}/${slug}-page-${padded}.png`;
        };

        loadNext();
      })();
    </script>
  </object>

## CSV previews and downloads

- L3 - ELEMENT TERMINOLOGY STANDARDS (Main).csv

  
  <p><a href="downloads/L3 - ELEMENT TERMINOLOGY STANDARDS (Main).csv">Download L3 - ELEMENT TERMINOLOGY STANDARDS (Main).csv</a></p>

- L3 - VALUE SET MAPPING (Main).csv

  <p><a href="downloads/L3 - VALUE SET MAPPING (Main).csv">Download L3 - VALUE SET MAPPING (Main).csv</a></p>

- MDS.csv

  <p><a href="downloads/MDS.csv">Download MDS.csv</a></p>
  
