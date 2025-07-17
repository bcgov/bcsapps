code <- paste0(
  "<!-- Google tag (gtag.js) -->
  <script async src='https://www.googletagmanager.com/gtag/js?id=", config::get("ga_tracking_id"), "'></script>
    <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('set', { 'page_title': '",config::get("ga_page_title"),"' }); // dashboard title

    gtag('config', '", config::get("ga_tracking_id"), "'); // bcstats
    </script>")


code <- paste(as.character(code), collapse = "")

write.table(code,
            file=file.path("app", "www", "google-analytics.html"),
            quote = FALSE,
            col.names = FALSE,
            row.names = FALSE)
