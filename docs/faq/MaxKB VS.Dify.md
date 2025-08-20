MaxKB и Dify — оба open‑source проекта на базе LLM, но их позиционирование и возможности отличаются:
    
- Позиционирование: Dify — платформа для разработки приложений на базе LLM (middle‑ware); MaxKB — готовое приложение Q&A на базе LLM и RAG.
- Сравнение возможностей: ниже — сравнительная таблица от Dify (с LangChain, Flowise и др.); MaxKB — это приложение на базе LangChain, дополняющее Workflow и SSO для enterprise‑сценариев.

    <table style="width: 100%;height: 80%;">
      <tr>
        <th align="center">Функция</th>
        <th align="center">Dify.AI</th>
        <th align="center">LangChain</th>
        <th align="center">Flowise</th>
        <th align="center">OpenAI Assistant API</th>
        <th align="center">MaxKB(Built on LangChain)</th>
      </tr>
      <tr>
        <td align="center">Подход к разработке</td>
        <td align="center">API + приложение‑ориентированный</td>
        <td align="center">Код на Python</td>
        <td align="center">Приложение‑ориентированный</td>
        <td align="center">API‑ориентированный</td>
        <td align="center">API + приложение‑ориентированный</td>
      </tr>
      <tr>
        <td align="center">Поддерживаемые LLM</td>
        <td align="center">Много</td>
        <td align="center">Много</td>
        <td align="center">Много</td>
        <td align="center">Только OpenAI</td>
        <td align="center">Много</td>
      </tr>
      <tr>
        <td align="center">RAG‑движок</td>
        <td align="center">✅</td>
        <td align="center">✅</td>
        <td align="center">✅</td>
        <td align="center">✅</td>
        <td align="center">✅</td>
      </tr>
      <tr>
        <td align="center">Agent</td>
        <td align="center">✅</td>
        <td align="center">✅</td>
        <td align="center">❌</td>
        <td align="center">✅</td>
        <td align="center">✅</td>
      </tr>
      <tr>
        <td align="center">Рабочие процессы</td>
        <td align="center">✅</td>
        <td align="center">❌</td>
        <td align="center">✅</td>
        <td align="center">❌</td>
        <td align="center">✅</td>
      </tr>
      <tr>
        <td align="center">Наблюдаемость</td>
        <td align="center">✅</td>
        <td align="center">✅</td>
        <td align="center">❌</td>
        <td align="center">❌</td>
        <td align="center">✅</td>
      </tr>
      <tr>
        <td align="center">Enterprise‑функции (SSO/ACL)</td>
        <td align="center">✅</td>
        <td align="center">❌</td>
        <td align="center">❌</td>
        <td align="center">❌</td>
        <td align="center">✅</td>
      </tr>
      <tr>
        <td align="center">Локальное развертывание</td>
        <td align="center">✅</td>
        <td align="center">✅</td>
        <td align="center">✅</td>
        <td align="center">❌</td>
        <td align="center">✅</td>
      </tr>
    </table>