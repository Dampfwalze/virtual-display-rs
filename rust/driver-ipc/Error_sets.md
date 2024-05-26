# Error sets

## `Client`

<table>
    <tr>
        <th>Method</th>
        <th>Errors</th>
        <th>Meaning</th>
    </tr>
    <tr>
        <td>
            <code>Client::connect()</code><br/>
            <code>Client::connect_to()</code><br/>
        </td>
        <td>
            <ul>
                <li><code>io::Error</code></li>
            </ul>
        </td>
        <td>
            <ul>
                <li>Connection failed</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>
            <code>send_command()</code><br/>
        </td>
        <td>
            <ul>
                <li><code>serde_json::Error</code></li>
                <li><code>io::Error</code></li>
            </ul>
        </td>
        <td>
            <ul>
                <li>Encode failed</li>
                <li>Pipe broken</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>
            <code>Client::notify()</code><br/>
            <code>Client::remove()</code><br/>
            <code>Client::remove_all()</code><br/>
        </td>
        <td>
            <ul>
                <li><s><code>serde_json::Error</code></s> cannot happen</li>
                <li><code>io::Error</code></li>
            </ul>
        </td>
        <td>
            <ul>
                <li>Pipe broken</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>
            <code>receive_command()</code><br/>
        </td>
        <td>
            <ul>
                <li><code>io::Error</code></li>
                <li><code>SendError</code> we can silently stop</li>
                <li><s><code>serde_json::Error</code></s> skipped</li>
            </ul>
        </td>
        <td>
            <ul>
                <li>Pipe broken</li>
                <li>Client closed</li>
                <li>Server not working correctly</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>
            <code>Client::request_state()</code><br/>
        </td>
        <td>
            <ul>
                <li><s><code>serde_json::Error</code></s> cannot happen</li>
                <li><code>io::Error</code></li>
                <li><code>RecvError::Closed</code></li>
                <li>Timeout</li>
            </ul>
        </td>
        <td>
            <ul>
                <li>Pipe broken</li>
                <li><code>receive_command()</code> errored (Pipe broken)</li>
                <li>Server not responding in time</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>
            <code>Client::receive_events()</code><br/>
        </td>
        <td>
            <ul>
                <li><em><code>io::Error</code> from <code>receive_command()</code></em>(Not implemented)</li>
            </ul>
        </td>
        <td>
            <ul>
                <li>Pipe broken</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>
            <code>Client::persist()</code><br/>
        </td>
        <td>
            <ul>
                <li><code>io::Error</code></li>
                <li><code>serde_json::Error</code></li>
            </ul>
        </td>
        <td>
            <ul>
                <li>Failed to interact with registry</li>
                <li>Encode failed</li>
            </ul>
        </td>
    </tr>
</table>

## `DriverClient`

<table>
    <tr>
        <th>Method</th>
        <th>Errors</th>
        <th>Meaning</th>
    </tr>
    <tr>
        <td>
            <code>DriverClient::new()</code><br/>
            <code>DriverClient::new_with()</code><br/>
        </td>
        <td>
            <ul>
                <li><code>ConnectionError</code></li>
                <li><code>RequestError</code></li>
            </ul>
        </td>
        <td>
            <ul>
                <li>Connection failed</li>
                <li>State request failed</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>
            <code>DriverClient::refresh_state()</code><br/>
            <code>DriverClient::receive_events()</code><br/>
        </td>
        <td>
            <ul>
                <li><em><code>io::Error</code> from <code>Client::receive_events()</code></em></li>
            </ul>
        </td>
        <td>
            <ul>
                <li>Pipe broken</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>
            <code>DriverClient::set_monitors()</code><br/>
        </td>
        <td>
            <ul>
            </ul>
        </td>
        <td>
            <ul>
                <li>Duplicate monitor</li>
                <li>Duplicate mode</li>
                <li>Duplicate refresh rate</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>
            <code>DriverClient::replace_monitor()</code><br/>
        </td>
        <td>
            <ul>
            </ul>
        </td>
        <td>
            <ul>
                <li>Monitor not found</li>
                <li><em>Duplicate mode (TODO)</em></li>
                <li><em>Duplicate refresh rate (TODO)</em></li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>
            <code>DriverClient::notify()</code><br/>
        </td>
        <td>
            <ul>
                <li><code>SendError</code></li>
            </ul>
        </td>
        <td>
            <ul>
                <li>Pipe broken</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>
            <code>DriverClient::persist()</code><br/>
        </td>
        <td>
            <ul>
                <li><code>PersistError</code></li>
            </ul>
        </td>
        <td>
            <ul>
            </ul>
        </td>
    </tr>
    <tr>
        <td>
            <code>DriverClient::remove_query()</code><br/>
        </td>
        <td>
            <ul>
            </ul>
        </td>
        <td>
            <ul>
                <li>A query did not match a monitor</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>
            <code>DriverClient::add()</code><br/>
        </td>
        <td>
            <ul>
            </ul>
        </td>
        <td>
            <ul>
                <li>Duplicate mode</li>
                <li>Duplicate refresh rate</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>
            <code>DriverClient::set_enabled_query()</code><br/>
        </td>
        <td>
            <ul>
            </ul>
        </td>
        <td>
            <ul>
                <li>Monitor not found</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>
            <code>DriverClient::add_mode()</code><br/>
        </td>
        <td>
            <ul>
            </ul>
        </td>
        <td>
            <ul>
                <li>Monitor not found</li>
                <li>Duplicate mode</li>
                <li>Duplicate refresh rate</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>
            <code>DriverClient::remove_mode()</code><br/>
        </td>
        <td>
            <ul>
            </ul>
        </td>
        <td>
            <ul>
                <li>Monitor not found</li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>
            <code>DriverClient::remove_mode_query()</code><br/>
        </td>
        <td>
            <ul>
            </ul>
        </td>
        <td>
            <ul>
                <li>Query did not match a monitor</li>
            </ul>
        </td>
    </tr>
</table>
